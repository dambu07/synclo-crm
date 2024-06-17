from django.contrib import admin
from .models import blogs, blogCategory

@admin.register(blogs)
class BlogsAdmin(admin.ModelAdmin):
    list_display = ('title', 'category', 'created_at', 'thumbnail')

@admin.register(blogCategory)
class BlogCategoryAdmin(admin.ModelAdmin):
    list_display = ('name', 'slug', 'created_at')
