from django.urls import path
from servicepage.views import servicePage

urlpatterns = [
    path('services/', servicePage, name='frontServicePage' )
]
