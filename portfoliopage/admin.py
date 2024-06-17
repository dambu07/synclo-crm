from django.contrib import admin
from portfoliopage.models import *

@admin.register(PortfolioPageSEO)
class HomePageSEOAdmin(admin.ModelAdmin):
    list_display = ['meta_title', 'meta_description']
