from django.shortcuts import render


def production(request):
    return render(request, "product/production.html")


def ayran(request):
    return render(request, "product/ayran.html")


def smoothie(request):
    return render(request, "product/smoothie.html")


def tan(request):
    return render(request, "product/tan.html")
