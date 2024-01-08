from django.urls import path

from . import views


app_name = 'product'

urlpatterns = [
    path('production/', views.production, name='production'),
    path('ayran/', views.ayran, name='ayran'),
    path('smoothie/', views.smoothie, name='smoothie'),
    path('tan/', views.tan, name='tan'),
]
