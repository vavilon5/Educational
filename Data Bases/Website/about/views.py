from django.shortcuts import render


def index(request):
    return render(request, "about/index.html")


def information(request):
    return render(request, "about/information.html")


def factory(request):
    return render(request, "about/factory.html")


def contacts(request):
    return render(request, "about/contacts.html")


def map(request):
    return render(request, "about/map.html")
