from django.urls import path
from homepage.views import *

urlpatterns = [
    path('', homePage, name='homePage'),
    path('ajax-quote/', QuoteSubmit, name='QuoteSubmit'),
]
