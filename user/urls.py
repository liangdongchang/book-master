from django.urls import path
from user import views

urlpatterns = [
    path("", views.all_book, name="index"),  # 首页
    path("login/", views.login, name="login"),  # 登录
    path("register/", views.register, name="register"),  # 注册
    path("logout/", views.logout, name="logout"),  # 退出
    # path("item/", views.item, name="item"),
    path("all_book/", views.all_book, name="all_book"),  # 所有书籍
    path("book/<int:book_id>/", views.book, name="book"),  # 具体的书籍
    path("score/<int:book_id>/", views.score, name="score"),  # 评分
    path("comment/<int:book_id>/", views.commen, name="comment"),  # 评论
    path("good/<int:commen_id>/<int:book_id>/", views.good, name="good"),  # 给评论内容点赞
    path("collect/<int:book_id>/", views.collect, name="collect"),  # 收藏
    path("decollect/<int:book_id>/", views.decollect, name="decollect"),  # 取消
    path("message_boards/<int:fap_id>/<int:pagenum>/", views.message_boards, name="message_boards"),  # 获取论坛
    path("get_message_board/<int:message_board_id>/<int:fap_id>/<int:currentpage>/", views.get_message_board,
         name="get_message_board"),  # 获取论坛详情
    path("new_board_comment/<int:message_board_id>/<int:fap_id>/<int:currentpage>/", views.new_board_comment,
         name="new_board_comment"),  # 发表论坛评论
    path("new_message_board/", views.new_message_board, name="new_message_board"),  # 发表论坛
    path("like_collect/", views.like_collect, name="like_collect"),  # 对论坛留言点赞或收藏

    path("personal/", views.personal, name="personal"),  # 获取我的信息
    path("mycollect/", views.mycollect, name="mycollect"),  # 获取我的收藏
    path("myjoin/", views.myjoin, name="myjoin"),  # 我参加的活动
    path("my_comments/", views.my_comments, name="my_comments"),  # 我的评论
    path("my_rate/", views.my_rate, name="my_rate"),  # 我打分过的书籍
    path("delete_comment/<int:comment_id>", views.delete_comment, name="delete_comment"),  # 取消评论
    path("delete_rate/<int:rate_id>", views.delete_rate, name="delete_rate"),  # 取消评分
    path("hot_book/", views.hot_book, name="hot_book"),  # 获取热门书籍
    path("latest_book/", views.latest_book, name="latest_book"),  # 获取最新的书籍
    path("search/", views.search, name="search"),  # 搜索
    path("nobel_book/", views.nobel_book, name="nobel_book"),  # 诺贝尔奖书籍
    path("md_book/", views.md_book, name="md_book"),  # 茅盾文学奖书籍
    path("begin/", views.begin, name="begin"),  # 开始
    path("kindof/", views.kindof, name="kindof"),  # 书籍标签
    path("kind/<int:kind_id>/", views.kind, name="kind"),  # 特定的标签
    path("week_reco/", views.reco_by_week, name="week_reco"),  # 周推荐
    path("monthitem/", views.reco_by_month, name="monthitem"),  # 月推荐
    path("celery/", views.celery_test, name="celery_test"),  # celery测试
    path("create_book/", views.create_book, name="create_book"),  # 创建书籍
]
