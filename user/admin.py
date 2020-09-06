from django.contrib import admin

from .models import *


# Register your models here.
class UserAdmin(admin.ModelAdmin):
    list_display = ("username", "password", "name", "address", "email")
    search_fields = ("username", "name", "address", "phone", "email")


class BookAdmin(admin.ModelAdmin):
    list_display = ("title", "author", "sump", "good")
    search_fields = ("title", "author", "good")
    list_filter = ("author", "good")


class ScoreAdmin(admin.ModelAdmin):
    list_display = ("book", "num", "com", "fen")
    search_fields = ("book", "num", "com", "fen")


class ActionAdmin(admin.ModelAdmin):
    def show_all_join(self, obj):
        return [a.name for a in obj.user.all()]

    def num(self, obj):
        return obj.user.count()

    list_display = ("title", "num", "status")
    search_fields = ("title", "content", "user")
    list_filter = ("status",)


class CommenAdmin(admin.ModelAdmin):
    list_display = ("user", "book", "good", "create_time")
    search_fields = ("user", "book", "good")
    list_filter = ("user", "book")


class ActionCommenAdmin(admin.ModelAdmin):
    list_display = ("user", "action", "create_time")
    search_fields = ("user", "action")
    list_filter = ("user", "action")


class LiuyanAdmin(admin.ModelAdmin):
    list_display = ("user", "create_time")
    search_fields = ("user",)
    list_filter = ("user",)


class NumAdmin(admin.ModelAdmin):
    list_display = ("users", "books", "comments", "actions", "message_boards")

    def get_queryset(self, request):
        users = User.objects.all().count()
        books = Book.objects.all().count()
        comments = Comment.objects.all().count()
        actions = Action.objects.all().count()
        message_boards = MessageBoard.objects.all().count()
        if Num.objects.all().count() == 0:
            Num.objects.create(users=users, books=books, comments=comments, actions=actions,
                               message_boards=message_boards, )
        else:
            for num in Num.objects.all():
                num.users = users
                num.books = books
                num.comments = comments
                num.actions = actions
                num.message_boards = message_boards
                num.save()
        return super().get_queryset(request)


admin.site.register(Tags)
admin.site.register(User, UserAdmin)
admin.site.register(Book, BookAdmin)
# admin.site.register(Score, ScoreAdmin)
admin.site.register(Action, ActionAdmin)
admin.site.register(Comment, CommenAdmin)
admin.site.register(ActionComment, ActionCommenAdmin)
admin.site.register(MessageBoard, LiuyanAdmin)
admin.site.register(Num, NumAdmin)
