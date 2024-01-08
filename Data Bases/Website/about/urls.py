from django.urls import path

from . import views


app_name = 'about'

urlpatterns = [
    path('', views.index, name='index'),
    path('information/', views.information, name='information'),
    path('factory/', views.factory, name='factory'),
    path('contacts/', views.contacts, name='contacts'),
    path('map/', views.map, name='map'),
]
