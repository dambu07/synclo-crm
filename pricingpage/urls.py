from django.urls import path
from pricingpage.views import *

urlpatterns = [
    path('pricing/', pricingPage, name='pricingPage')
]
