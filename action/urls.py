from django.urls import path
from action import views

urlpatterns = [
    path("action/", views.action, name="action"),
    path("action/<int:action_id>", views.actionone, name="actionone"),
    path("action_comment/<int:action_id>", views.action_comment, name="action_comment"),
    path("join/<int:action_id>", views.join, name="join"),
    path("unjoin/<int:action_id>", views.unjoin, name="unjoin"),
]
