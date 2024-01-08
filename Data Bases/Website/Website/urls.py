from django.contrib import admin
from django.urls import path, include


urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('about.urls'), name='about'),
    path('production/', include('product.urls'), name='product'),
]
