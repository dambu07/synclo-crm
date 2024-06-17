from django.shortcuts import render, get_object_or_404
from aboutpage.models import *
from homepage.models import testimonialsSection

def aboutPage(request):
    meta = AboutPageSEO.objects.first()
    
    about = aboutSettings.objects.first()
    teams = teamSection.objects.all()
    testimonials = testimonialsSection.objects.all()
    clients = clientsSection.objects.all()
    context = {
        'meta' : meta,
        'about' : about,
        'teams' : teams,
        'testimonials' : testimonials,
        'clients' : clients
    }
    return render(request, 'front/main/about.html', context)

def teamSigngle(request, id):
    team = get_object_or_404(teamSection, id=id)
    
    context = {
        'team' : team
    }
    
    return render(request, 'front/main/partials/team_single.html', context)

# Error Page
def error_404(request, exception):
    return render(request, 'error/error_404.html', status=404)