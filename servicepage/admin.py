from django.contrib import admin
from servicepage.models import *

@admin.register(ServicePageSEO)
class ServicePageSEOAdmin(admin.ModelAdmin):
    list_display = ['meta_title', 'meta_description']
