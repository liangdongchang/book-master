from django.shortcuts import render

# Create your views here.
def newbook(request):
    return render(request, "user/index.html")


def hotbook(request):
    return render(request, "user/index.html")


def winning(request):
    return render(request, "user/index.html")


def recom(request):
    return render(request, "user/index.html")
