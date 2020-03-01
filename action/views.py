from django.shortcuts import render, redirect
from django.urls import reverse

from user.models import *
from user.views import login_in


# Create your views here.
def action(request):
    action = Action.objects.all()
    print(action)
    return render(request, "action/action.html", {"action": action})


def actionone(request, action_id):
    action = Action.objects.get(pk=action_id)
    comments = action.actioncomment_set.all()
    is_join = None
    user_id = request.session.get('user_id')
    if user_id:
        is_join = action.user.filter(pk=user_id).exists()
    return render(
        request, "action/actionone.html", {"action": action, "comment": comments, 'is_join': is_join}
    )


@login_in
def action_comment(request, action_id):
    action = Action.objects.get(id=action_id)
    user = User.objects.get(id=request.session.get("user_id"))
    comment = request.POST["comment"]
    ActionComment.objects.create(user=user, action=action, comment=comment)
    return redirect(reverse("actionone", kwargs={'action_id': action_id}))


@login_in
def join(request, action_id):
    action = Action.objects.get(id=action_id)
    user_id = request.session.get("user_id")
    user = User.objects.get(id=user_id)
    user.action_set.add(action)
    return redirect(reverse('actionone', kwargs={'action_id': action_id}))


@login_in
def unjoin(request, action_id):
    user_id = request.session.get("user_id")
    action = Action.objects.get(pk=action_id)
    user = User.objects.get(id=user_id)
    user.action_set.remove(action)
    return redirect(reverse('actionone', kwargs={'action_id': action_id}))
