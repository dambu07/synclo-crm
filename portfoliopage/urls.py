from django.urls import path
from portfoliopage.views import *

urlpatterns = [
    path('projects/', projectPage, name='frontProjectPage'),
    path('project/view/<slug:slug>', projectDetailPage, name='projectDetail')
    
]
