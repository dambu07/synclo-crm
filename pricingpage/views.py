from django.shortcuts import render
from pricingpage.models import *

def pricingPage(request):
    meta = pricingPageSEO.objects.first()
    
    pricing_list = pricing.objects.all()
    
    context ={
        'meta' : meta,
        'pricing_list' : pricing_list
    }
    
    return render(request, 'front/main/pricing.html', context)

# Error Page
def error_404(request, exception):
    return render(request, 'error/error_404.html', status=404)