from django.shortcuts import render
from homepage.models import serviceSection, funFactSection
from aboutpage.models import clientsSection
from servicepage.models import ServicePageSEO

def servicePage(request):
    meta = ServicePageSEO.objects.first()
    
    services = serviceSection.objects.all()
    funfacts = funFactSection.objects.all()
    clients = clientsSection.objects.all()
    context = {
        'meta' : meta,
        
        'services' : services,
        'funfacts' : funfacts,
        'clients' : clients,
    }
    return render(request, 'front/main/services.html', context)

# Error Page
def error_404(request, exception):
    return render(request, 'error/error_404.html', status=404)