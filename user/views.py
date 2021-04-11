from functools import wraps

from django.core.paginator import Paginator
from django.db.models import Q, Count, F
from django.http import HttpResponse, JsonResponse
from django.shortcuts import render, redirect
from django.urls import reverse
from rest_framework.renderers import JSONRenderer
from django.views.decorators.cache import cache_page

from recommend_books import recommend_by_user_id
from .forms import *


def login_in(func):  # 验证用户是否登录
    @wraps(func)
    def wrapper(*args, **kwargs):
        request = args[0]
        is_login = request.session.get("login_in")
        if is_login:
            return func(*args, **kwargs)
        else:
            return redirect(reverse("login"))

    return wrapper


def books_paginator(books, page):
    paginator = Paginator(books, 6)
    if page is None:
        page = 1
    books = paginator.page(page)
    return books


class JSONResponse(HttpResponse):
    def __init__(self, data, **kwargs):
        content = JSONRenderer().render(data)
        kwargs["content_type"] = "application/json"
        super(JSONResponse, self).__init__(content, **kwargs)


def login(request):
    if request.method == "POST":
        form = Login(request.POST)
        if form.is_valid():
            username = form.cleaned_data["username"]
            password = form.cleaned_data["password"]
            result = User.objects.filter(username=username)
            if result:
                user = User.objects.get(username=username)
                if user.password == password:
                    request.session["login_in"] = True
                    request.session["user_id"] = user.id
                    request.session["name"] = user.name
                    return redirect(reverse("all_book"))
                else:
                    return render(
                        request, "user/login.html", {"form": form, "error": "账号或密码错误"}
                    )
            else:
                return render(
                    request, "user/login.html", {"form": form, "error": "账号不存在"}
                )
    else:
        form = Login()
        return render(request, "user/login.html", {"form": form})


def register(request):
    if request.method == "POST":
        form = RegisterForm(request.POST)
        error = None
        if form.is_valid():
            username = form.cleaned_data["username"]
            password = form.cleaned_data["password2"]
            email = form.cleaned_data["email"]
            name = form.cleaned_data["name"]
            phone = form.cleaned_data["phone"]
            address = form.cleaned_data["address"]
            User.objects.create(
                username=username,
                password=password,
                email=email,
                name=name,
                phone=phone,
                address=address,
            )
            # 根据表单数据创建一个新的用户
            return redirect(reverse("login"))  # 跳转到登录界面
        else:
            # print(form, 'lllllllllllllllll')
            return render(
                request, "user/register.html", {"form": form, "error": error}
            )  # 表单验证失败返回一个空表单到注册页面
    form = RegisterForm()
    return render(request, "user/register.html", {"form": form})


def logout(request):
    if not request.session.get("login_in", None):  # 不在登录状态跳转回首页
        return redirect(reverse("index"))
    request.session.flush()  # 清除session信息
    return redirect(reverse("index"))


def all_book(request):
    books = Book.objects.annotate(user_collector=Count('collect')).order_by('-user_collector')
    paginator = Paginator(books, 9)
    current_page = request.GET.get("page", 1)
    books = paginator.page(current_page)
    return render(request, "user/item.html", {"books": books, "title": "所有书籍"})


def search(request):  # 搜索
    if request.method == "POST":  # 如果搜索界面
        key = request.POST["search"]
        request.session["search"] = key  # 记录搜索关键词解决跳页问题
    else:
        key = request.session.get("search")  # 得到关键词
    books = Book.objects.filter(
        Q(title__icontains=key) | Q(intro__icontains=key) | Q(author__icontains=key)
    )  # 进行内容的模糊搜索
    page_num = request.GET.get("page", 1)
    books = books_paginator(books, page_num)
    return render(request, "user/item.html", {"books": books})


def book(request, book_id):
    # 获取具体的书籍
    book = Book.objects.get(pk=book_id)
    book.num += 1
    book.save()
    comments = book.comment_set.order_by("-create_time")
    user_id = request.session.get("user_id")
    rate = Rate.objects.filter(book=book).aggregate(Avg("mark")).get("mark__avg", 0)
    rate = rate if rate else 0
    book_rate = round(rate, 2)

    if user_id:
        user = User.objects.get(pk=user_id)
        is_collect = book.collect.filter(id=user_id).first()
        is_rate = Rate.objects.filter(book=book, user=user).first()
    rate_num = book.rate_num
    sump = book.sump
    return render(request, "user/book.html", locals())


@login_in
def score(request, book_id):
    # 打分
    user = User.objects.get(id=request.session.get("user_id"))
    book = Book.objects.get(id=book_id)
    score = float(request.POST.get("score", 0))
    is_rate = Rate.objects.filter(book=book, user=user).first()
    if not is_rate:
        book.rate_num += 1
        book.save()
        Rate.objects.get_or_create(user=user, book=book, defaults={"mark": score})
        is_rate = {'mark': score}
    comments = book.comment_set.order_by("-create_time")
    user_id = request.session.get("user_id")
    rate = Rate.objects.filter(book=book).aggregate(Avg("mark")).get("mark__avg", 0)
    rate = rate if rate else 0
    book_rate = round(rate, 2)
    user = User.objects.get(pk=user_id)
    is_collect = book.collect.filter(id=user_id).first()
    rate_num = book.rate_num
    sump = book.sump
    return render(request, "user/book.html", locals())


@login_in
def commen(request, book_id):
    # 评论
    user = User.objects.get(id=request.session.get("user_id"))
    book = Book.objects.get(id=book_id)
    comment = request.POST.get("comment", "")
    Comment.objects.create(user=user, book=book, content=comment)
    comments = book.comment_set.order_by("-create_time")
    user_id = request.session.get("user_id")
    rate = Rate.objects.filter(book=book).aggregate(Avg("mark")).get("mark__avg", 0)
    rate = rate if rate else 0
    book_rate = round(rate, 2)
    user = User.objects.get(pk=user_id)
    is_collect = book.collect.filter(id=user_id).first()
    is_rate = Rate.objects.filter(book=book, user=user).first()
    rate_num = book.rate_num
    sump = book.sump
    return render(request, "user/book.html", locals())


@login_in
def good(request, commen_id, book_id):
    # 点赞
    commen = Comment.objects.get(id=commen_id)
    commen.good += 1
    commen.save()
    book = Book.objects.get(id=book_id)
    comments = book.comment_set.order_by("-create_time")
    user_id = request.session.get("user_id")
    rate = Rate.objects.filter(book=book).aggregate(Avg("mark")).get("mark__avg", 0)
    rate = rate if rate else 0
    book_rate = round(rate, 2)
    if user_id is not None:
        user = User.objects.get(pk=user_id)
        is_collect = book.collect.filter(id=user_id).first()
        is_rate = Rate.objects.filter(book=book, user=user).first()
    rate_num = book.rate_num
    sump = book.sump
    return render(request, "user/book.html", locals())


@login_in
def collect(request, book_id):
    user = User.objects.get(id=request.session.get("user_id"))
    book = Book.objects.get(id=book_id)
    book.collect.add(user)
    book.sump += 1  # 收藏人数加1
    book.save()

    comments = book.comment_set.order_by("-create_time")
    user_id = request.session.get("user_id")
    rate = Rate.objects.filter(book=book).aggregate(Avg("mark")).get("mark__avg", 0)
    rate = rate if rate else 0
    book_rate = round(rate, 2)

    user = User.objects.get(pk=user_id)
    is_collect = book.collect.filter(id=user_id).first()
    is_rate = Rate.objects.filter(book=book, user=user).first()
    rate_num = book.rate_num
    sump = book.sump
    return render(request, "user/book.html", locals())


@login_in
def decollect(request, book_id):
    user = User.objects.get(id=request.session.get("user_id"))
    book = Book.objects.get(id=book_id)
    book.collect.remove(user)
    book.sump -= 1
    book.save()
    comments = book.comment_set.order_by("-create_time")
    user_id = request.session.get("user_id")
    rate = Rate.objects.filter(book=book).aggregate(Avg("mark")).get("mark__avg", 0)
    rate = rate if rate else 0
    book_rate = round(rate, 2)

    user = User.objects.get(pk=user_id)
    is_collect = book.collect.filter(id=user_id).first()
    is_rate = Rate.objects.filter(book=book, user=user).first()
    rate_num = book.rate_num
    sump = book.sump
    return render(request, "user/book.html", locals())


# 方法I
# @cache_page(60 * 1)
def message_boards(request, fap_id=1, pagenum=1, **kwargs):
    # 获取论坛内容
    msg = request.GET.get('msg', '')
    # print('做了缓存')
    have_board = True
    if fap_id == 1:
        # 热门
        msg_board = MessageBoard.objects.all().order_by('-like_num')
    elif fap_id == 2:
        # 最新
        msg_board = MessageBoard.objects.all().order_by('-create_time')
    elif fap_id == 3:
        # 点赞
        is_login = request.session.get("login_in")
        if not is_login:
            return redirect(reverse("login"))
        user = User.objects.get(id=request.session.get("user_id"))
        collectboards = CollectBoard.objects.filter(user=user, is_like=True).order_by(
            'create_time')
        msg_board = []
        for mb in collectboards:
            msg_board.append(mb.message_board)

    elif fap_id == 4:
        # 收藏
        is_login = request.session.get("login_in")
        if not is_login:
            return redirect(reverse("login"))
        user = User.objects.get(id=request.session.get("user_id"))
        collectboards = CollectBoard.objects.filter(user=user, is_collect=True).order_by(
            'create_time')
        msg_board = []
        for mb in collectboards:
            msg_board.append(mb.message_board)
    elif fap_id == 5:
        # 我的
        is_login = request.session.get("login_in")
        if not is_login:
            return redirect(reverse("login"))
        user = User.objects.get(id=request.session.get("user_id"))
        msg_board = MessageBoard.objects.filter(user=user).order_by('-create_time')
    else:
        msg_board = MessageBoard.objects.all().order_by('create_time')
    if not msg_board:
        have_board = False

    # 构建分页器对象,blogs=所有博文,2=每页显示的个数
    paginator = Paginator(msg_board, 10)

    # 获取第n页的页面对象
    page = paginator.page(pagenum)

    # Paginator和Page的常用API
    # page.previous_page_number()
    # page.next_page_number()
    # page.has_previous()
    # page.has_next()

    # 构造页面渲染的数据
    '''
    渲染需要的数据:
    - 当前页的博文对象列表
    - 分页页码范围
    - 当前页的页码
    '''
    data = {
        # 当前页的博文对象列表
        "page": page,
        # 分页页码范围
        "pagerange": paginator.page_range,
        # 当前页的页码
        "currentpage": page.number,
        "message_boards": msg_board,
        "have_board": have_board,
        "fap_id": fap_id,
    }

    return render(request, "user/message_boards.html", context=data)


@login_in
def new_message_board(request):
    # 写新论坛
    user = User.objects.get(id=request.session.get("user_id"))
    title = request.POST.get("title")
    content = request.POST.get("content")
    # print('ddddddddddddddddd', title, content)
    if not title or not content:
        return redirect(reverse("message_boards", kwargs={'fap_id': 2, 'pagenum': 1}))
    MessageBoard.objects.create(user=user, content=content, title=title)
    return redirect(reverse("message_boards", args=(2, 1)))


def get_message_board(request, message_board_id, fap_id=1, currentpage=1):
    # 用户每浏览一次，就增加一次浏览量
    try:
        user = User.objects.get(id=request.session.get("user_id"))
        collectboard = CollectBoard.objects.filter(user=user, message_board_id=message_board_id)
        is_like = collectboard.first().is_like
        is_collect = collectboard.first().is_collect
    except:
        is_like = 0
        is_collect = 0

    MessageBoard.objects.filter(id=message_board_id).update(look_num=F('look_num') + 1)
    msg_board = MessageBoard.objects.get(id=message_board_id)

    board_comments = msg_board.boardcomment_set.all()
    have_comment = True
    if not board_comments:
        have_comment = False

    context = {"msg_board": msg_board,
               "board_comments": board_comments,
               "have_comment": have_comment,
               "fap_id": fap_id,
               "currentpage": currentpage,
               'is_like': is_like,
               'is_collect': is_collect,
               'message_board_id': message_board_id
               }
    return render(request, "user/message_board.html", context=context)


@login_in
def new_board_comment(request, message_board_id, fap_id=1, currentpage=1):
    # 写评论
    content = request.POST.get("content")
    if not content:
        return redirect(reverse("get_message_board", args=(message_board_id, fap_id, currentpage)))

    MessageBoard.objects.get(id=message_board_id)
    user = User.objects.get(id=request.session.get("user_id"))

    BoardComment.objects.create(
        user=user, content=content, message_board_id=message_board_id
    )
    MessageBoard.objects.filter(id=message_board_id).update(feebback_num=F('feebback_num') + 1)
    return redirect(reverse("get_message_board", args=(message_board_id, fap_id, currentpage)))


# @login_in
def like_collect(request):
    # 点赞或收藏

    try:
        user = User.objects.get(id=request.session.get("user_id"))
    except:
        return JsonResponse(data={'code': 2, 'msg': '没有登录'})
    message_board_id = request.POST.get("message_board_id")
    like_or_collect = request.POST.get("like_or_collect", None)  # 点赞还是收藏
    is_like = request.POST.get("is_like", None)  # 是否点赞
    is_collect = request.POST.get("is_collect", None)  # 是否收藏
    # print('lllll', like_or_collect, is_like, is_collect)
    if like_or_collect not in ['like', 'collect'] or None in [is_like, is_collect]:
        return JsonResponse(data={'code': 0, 'msg': '参数有误1'})
    try:
        collectboard = CollectBoard.objects.filter(user=user, message_board_id=message_board_id)
        if not collectboard:
            CollectBoard.objects.create(user=user, message_board_id=message_board_id,
                                        is_collect=is_collect if like_or_collect == 'collect' else 0,
                                        is_like=is_like if like_or_collect == 'like' else 0)
            if like_or_collect == 'like':
                if is_like == 0:
                    MessageBoard.objects.filter(id=message_board_id).update(like_num=F('like_num') - 1)
                else:
                    MessageBoard.objects.filter(id=message_board_id).update(like_num=F('like_num') + 1)
            else:
                if is_like == 0:
                    MessageBoard.objects.filter(id=message_board_id).update(collect_num=F('collect_num') - 1)
                else:
                    MessageBoard.objects.filter(id=message_board_id).update(collect_num=F('collect_num') + 1)
            return JsonResponse(data={'code': 1, 'msg': '操作成功'})
        collectboard = collectboard.first()
        if like_or_collect == 'like':
            is_collect = collectboard.is_collect
        else:
            is_like = collectboard.is_like
        CollectBoard.objects.filter(user=user, message_board_id=message_board_id).update(is_collect=is_collect,
                                                                                         is_like=is_like)
        if like_or_collect == 'like':
            if is_like == 0:
                MessageBoard.objects.filter(id=message_board_id).update(like_num=F('like_num') - 1)
            else:
                MessageBoard.objects.filter(id=message_board_id).update(like_num=F('like_num') + 1)
        else:
            if is_like == 0:
                MessageBoard.objects.filter(id=message_board_id).update(collect_num=F('collect_num') - 1)
            else:
                MessageBoard.objects.filter(id=message_board_id).update(collect_num=F('collect_num') + 1)
        return JsonResponse(data={'code': 1, 'msg': '操作成功', 'is_like': is_like, 'is_collect': is_collect})
    except Exception as e:
        print(e)
        return JsonResponse(data={'code': 0, 'msg': '参数有误2'})


@login_in
def personal(request):
    # 获取我的信息
    user = User.objects.get(id=request.session.get("user_id"))
    if request.method == "POST":
        form = Edit(instance=user, data=request.POST)
        if form.is_valid():
            form.save()
            return redirect(reverse("personal"))
        else:
            return render(
                request, "user/personal.html", {"message": "修改失败", "form": form}
            )
    form = Edit(instance=user)
    return render(request, "user/personal.html", {"form": form})


@login_in
def mycollect(request):
    user = User.objects.get(id=request.session.get("user_id"))
    book = user.book_set.all()
    return render(request, "user/mycollect.html", {"book": book})


@login_in
def myjoin(request):
    user_id = request.session.get("user_id")
    user = User.objects.get(id=user_id)
    user_actions = user.action_set.all()
    return render(request, "user/myaction.html", {"action": user_actions})


@login_in
def my_comments(request):
    user = User.objects.get(id=request.session.get("user_id"))
    comments = user.comment_set.all()
    # print('comment:', comments)
    return render(request, "user/my_comment.html", {"comments": comments})


@login_in
def delete_comment(request, comment_id):
    # 删除评论
    Comment.objects.get(pk=comment_id).delete()
    user = User.objects.get(id=request.session.get("user_id"))
    comments = user.comment_set.all()
    # print('comment:', comments)
    return render(request, "user/my_comment.html", {"comments": comments})


@login_in
def my_rate(request):
    user = User.objects.get(id=request.session.get("user_id"))
    rate = user.rate_set.all()
    return render(request, "user/my_rate.html", {"rate": rate})


@login_in
def delete_rate(request, rate_id):
    rate = Rate.objects.filter(pk=rate_id)
    if not rate:
        return render(request, "user/my_rate.html", {"rate": rate})
    rate = rate.first()
    rate.book.rate_num -= 1
    rate.book.save()
    rate.save()
    rate.delete()
    user = User.objects.get(id=request.session.get("user_id"))
    rate = user.rate_set.all()
    return render(request, "user/my_rate.html", {"rate": rate})


def hot_book(request):
    page_number = request.GET.get("page", 1)
    books = Book.objects.annotate(user_collector=Count('collect')).order_by('-user_collector')[:10]
    books = books_paginator(books[:10], page_number)
    return render(request, "user/item.html", {"books": books, "title": "最热书籍"})


def latest_book(request):
    page_number = request.GET.get("page", 1)
    books = books_paginator(Book.objects.order_by("-id")[:10], page_number)
    return render(request, "user/item.html", {"books": books, "title": "最新书籍"})


def nobel_book(request):
    page_number = request.GET.get("page", 1)
    book_cate = "诺贝尔文学奖"
    books = books_paginator(Book.objects.filter(good=book_cate), page_number)
    return render(request, "user/item.html", {"books": books, "title": book_cate})


def md_book(request):
    page_number = request.GET.get("page", 1)
    book_cate = "茅盾文学奖"
    books = books_paginator(Book.objects.filter(good=book_cate), page_number)
    return render(request, "user/item.html", {"books": books, "title": book_cate})


def begin(request):
    if request.method == "POST":
        email = request.POST["email"]
        username = request.POST["username"]
        result = User.objects.filter(username=username)
        if result:
            if result[0].email == email:
                result[0].password = request.POST["password"]
                return HttpResponse("修改密码成功")
            else:
                return render(request, "user/begin.html", {"message": "注册时的邮箱不对"})
        else:
            return render(request, "user/begin.html", {"message": "账号不存在"})
    return render(request, "user/begin.html")


def kindof(request):
    tags = Tags.objects.all()
    return render(request, "user/kindof.html", {"tags": tags})


def kind(request, kind_id):
    tags = Tags.objects.get(id=kind_id)
    books = tags.tags.all()
    return render(request, "user/kind.html", {"books": books})


@login_in
def reco_by_week(request):
    page = request.GET.get("page", 1)
    books = books_paginator(recommend_by_user_id(request.session.get("user_id")), page)
    path = request.path
    title = "周推荐图书"
    return render(
        request, "user/item.html", {"books": books, "path": path, "title": title}
    )


@login_in
def reco_by_month(request):
    # 月推荐图书
    page = request.GET.get("page", 1)
    books = books_paginator(recommend_by_user_id(request.session.get("user_id")), page)
    path = request.path
    title = "月推荐图书"
    return render(
        request, "user/item.html", {"books": books, "path": path, "title": title}
    )


def create_book(request, ):
    # 创建书籍
    from django.db import connection, connections

    with open('book.sql', 'r', encoding='utf-8') as f:
        cursor = connection.cursor()  # cursor = connections['default'].cursor()
        for sql in f.readlines():
            # print(sql)
            try:
                cursor.execute(sql)
            except:
                pass

    return redirect(reverse("login", ))


# celery测试
# from user.task import start_running
#
#
# def celery_test(request):
#     print('>=====开始发送请求=====<')
#     start_running.delay('发送短信')
#     # start_running.apply_async(('发送短信',), countdown=10)  # 10秒后再执行异步任务
#     return HttpResponse('<h2> 请求已发送 </h2>')
