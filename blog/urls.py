from django.urls import path
from blog.views import *

urlpatterns = [
    path('blogs/', blogHomeFront,name='blogs'),
    path('blog/<slug:slug>', blogDetailPage, name='blogDetail')
]
