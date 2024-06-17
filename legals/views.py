from django.shortcuts import render, redirect
from legals.models import *
from legals.forms import *
from django.contrib.auth.decorators import login_required
from core.decorators import admin_role_required
from django.contrib import messages
from django.urls import reverse
from django.conf import settings
from django.core.mail import EmailMessage
from settings.models import websiteSetting, HeaderFooter
from django.template.loader import render_to_string

# Terms View Admin
@login_required(login_url='signIn')
@admin_role_required
def termsPageAdmin(request):
    termsData = termsnConditionPage.objects.first()
    seoData = termsnConditionPageSEO.objects.first()
    
    # Initialize form variables
    form = termsForm(instance=termsData)
    seoForm = termsPageSeoForm(instance=seoData)

    if request.method == "POST":
        if 'terms' in request.POST:
            form = termsForm(request.POST, instance=termsData)
            if form.is_valid():
                form.save()
                messages.success(request, 'Terms updated successfully!')
                return redirect('termsPageAdmin')
        elif 'meta_title' in request.POST:
            seoForm = termsPageSeoForm(request.POST, instance=seoData)
            if seoForm.is_valid():
                seoForm.save()
                messages.success(request, 'Terms page seo updated successfully!')
                return redirect('termsPageAdmin')
        else:
            return redirect('termsPageAdmin')

    context = {
        'title': 'Terms & Condition Page',
        'form': form,
        'SeoForm': seoForm,
    }
    
    return render(request, 'admin/front/main/pages/t&c.html', context)


# Policy View Admin
@login_required(login_url='signIn')
@admin_role_required
def policyPageAdmin(request):
    policyData = privacyPolicyPage.objects.first()
    seoData = privacyPolicyPageSEO.objects.first()

    form = policyForm(instance = policyData)
    seoForm = policyPageSeoForm(instance = seoData)

    if request.method == "POST":
        if 'policy' in request.POST:
            form = policyForm(request.POST, instance = policyData)
            if form.is_valid():
                form.save()
                messages.success(request, 'Policy updated successfully!')
                return redirect('policyPageAdmin')
        elif 'meta_title' in request.POST:
            seoForm = policyPageSeoForm(request.POST, instance = seoData)
            if seoForm.is_valid():
                seoForm.save()
                messages.success(request, 'Policy page seo updated successfully!')
                return redirect('policyPageAdmin')
        else:
            return redirect('policyPageAdmin')
        
    context = {
        'title' : 'Privacy Policy Page',
        'form' : form,
        'SeoForm' : seoForm,
    }
    
    return render(request, 'admin/front/main/pages/policy.html' , context)

# Terms And Condition Page Front
def termsPageFront(request):
    terms = termsnConditionPage.objects.first()
    meta = termsnConditionPageSEO.objects.first
    
    
    context = {
        'meta': meta,
        'term' : terms
    }
    
    return render(request, 'front/main/terms.html' , context)

# Terms And Condition Page Front
def policyPageFront(request):
    policy = privacyPolicyPage.objects.first()
    meta = privacyPolicyPageSEO.objects.first
    
    
    context = {
        'meta': meta,
        'policy' : policy
    }
    
    return render(request, 'front/main/policy.html' , context)

# Agreement Page Front
@login_required(login_url='signIn')
def signAgreement(request):
    if request.method == 'POST':
        form = agreementForm(request.POST)
        if form.is_valid():
            new_agreement = form.save(commit=False)
            new_agreement.client = request.user
            new_agreement.save()

            # Email content
            terms_page_url = request.build_absolute_uri(reverse('termsPageFront'))
            header_footer = HeaderFooter.objects.first()
            website_settings = websiteSetting.objects.first()
            subject = 'Agreement Signed Successfully'
            html_message = render_to_string('admin/front/main/email/agreement_sign.html', {
            'agreement': new_agreement,
            'terms_page_url': terms_page_url,
            'footer' : header_footer,
            'settings' : website_settings,
            })

            
            from_email = f'"{website_settings.name}" <{settings.DEFAULT_FROM_EMAIL}>'
            email_message = EmailMessage(
                subject=subject,
                body=html_message,
                from_email=from_email,
                to=[new_agreement.email],  # Use the email from the agreement form
            )
            email_message.content_subtype = 'html'  # Set content type to HTML
            email_message.send()

            messages.success(request, "Agreement signed successfully. We will get back to you soon. You can check your email for details and confirmation.")
            return redirect('signAgreement')
    else:
        form = agreementForm()
    
    context = {
        'title': 'Sign Agreement',
        'form': form
    }
    return render(request, 'front/main/agreement.html', context)
        
# Error Page
def error_404(request, exception):
    return render(request, 'error/error_404.html', status=404)
