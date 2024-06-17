from django.shortcuts import render
from homepage.models import *
from aboutpage.models import clientsSection
from blog.models import *
from django.utils import timezone
from datetime import datetime
from django.http import JsonResponse
from adminapp.forms import ContactForm
from django.views.decorators.csrf import csrf_exempt
from analytics.utils import visitor_data

@csrf_exempt
def homePage(request):
    visitor_data(request)
    meta = HomePageSEO.objects.first()
    
    banner = bannerSection.objects.first()
    service_sections = serviceSection.objects.all()
    projects_sections = projectsSection.objects.all()
    project_categories = projectCategory.objects.all()
    fun_fact_sections = funFactSection.objects.all()
    testimonials_sections = testimonialsSection.objects.all()
    blogs_section = blogs.objects.all()
    clients = clientsSection.objects.all()
    
    context = {
        'meta' : meta,
        
        'banner' : banner,
        'services': service_sections,
        'projects': projects_sections,
        'project_categories': project_categories,
        'funfacts': fun_fact_sections,
        'blogs' : blogs_section,
        'testimonials': testimonials_sections,
        'clients' : clients,
        
    }
    
    return render(request, 'front/main/index.html', context)

# # # # # # # # # # # # # # # # # #
    # Contact Submit #
# # # # # # # # # # # # # # # # # #
def QuoteSubmit(request):
    if request.method == 'POST' and request.headers.get('x-requested-with') == 'XMLHttpRequest':
        # Check if there's a session variable for the last submission time
        last_submission_time_str = request.session.get('last_contact_submission_time')

        if last_submission_time_str:
            # Convert the stored time string back to a datetime object
            last_submission_time = datetime.fromisoformat(last_submission_time_str)

            # Calculate the time difference between the last submission and the current time
            time_difference = timezone.now() - last_submission_time

            # Check if less than five minutes have passed since the last submission
            if time_difference.total_seconds() < 300:  # 300 seconds = 5 minutes
                # Calculate the time left for the next submission
                time_left_seconds = 300 - time_difference.total_seconds()
                minutes_left = int(time_left_seconds / 60)
                seconds_left = int(time_left_seconds % 60)

                return JsonResponse({'status': 'error', 'message': f'You can submit again in {minutes_left} minutes and {seconds_left} seconds.'})

        # Save the current time in the session as a string in ISO 8601 format
        request.session['last_contact_submission_time'] = timezone.now().isoformat()

        form = ContactForm(request.POST)
        if form.is_valid():
            form.instance.message = 'This form is submitted from the get quote form'
            form.save()
            return JsonResponse({'status': 'success', 'message': 'Submitted successfully! We will get back to you soon.'})
        else:
            print(form.errors)
            return JsonResponse({'status': 'error', 'message': 'Invalid submit! Try again.'})

    return JsonResponse({'status': 'error', 'message': 'Invalid method or not an AJAX request!'})


# Error Page
def error_404(request, exception):
    return render(request, 'error/error_404.html', status=404)