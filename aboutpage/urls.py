from django.urls import path
from aboutpage.views import *

urlpatterns = [
    path('about-us/', aboutPage, name='aboutUS'),
    path('team/detail/<int:id>', teamSigngle, name='teamSigngle'),
]
