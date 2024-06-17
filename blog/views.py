from django.shortcuts import render, get_object_or_404
from blog.models import *
from django.core.paginator import Paginator


def blogHomeFront(request):
    search = request.GET.get('search')
    blog_list = blogs.objects.all()

    if search:
        blog_list = blog_list.filter(title__icontains=search) 

    paginator = Paginator(blog_list, 3)
    page = request.GET.get('page')
    all_blogs = paginator.get_page(page)

    context = {
        'title': 'Blogs',
        'blogs': all_blogs,
        'search': search,
    }
    return render(request, 'front/main/blog.html', context)


def blogDetailPage(request, slug):
    blog_list = blogs.objects.all()
    
    blog = get_object_or_404(blogs, slug=slug)
    context = {
        'blog' : blog,
        'blogs' : blog_list
    }
    return render(request, 'front/main/partials/blogsingle.html', context)

# Error Page
def error_404(request, exception):
    return render(request, 'error/error_404.html', status=404)
