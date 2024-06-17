from django.shortcuts import render, get_object_or_404
from homepage.models import projectsSection, projectCategory
from portfoliopage.models import PortfolioPageSEO


def projectPage(request):
    meta = PortfolioPageSEO.objects.first()
    
    projects = projectsSection.objects.all()
    categories = projectCategory.objects.all()
    
    context = {
        'meta' : meta,
        'projects' : projects,
        'categories' : categories,
    }
    return render(request, 'front/main/projects.html', context)

def projectDetailPage(request, slug):
    project = get_object_or_404(projectsSection, slug=slug)
    context = {
        'title' : 'Projects',
        'project' : project
    }
    return render(request, 'front/main/partials/project_details.html', context)

# Error Page
def error_404(request, exception):
    return render(request, 'error/error_404.html', status=404)