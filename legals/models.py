from django.db import models
from ckeditor.fields import RichTextField
from pricingpage.models import pricing
from authapp.models import User

# T&C
class termsnConditionPage(models.Model):
    terms = RichTextField()
    
    def __str__(self):
        if self.terms:
            return self.terms
        else:
            return "None"

class termsnConditionPageSEO(models.Model):
    meta_title = models.CharField(max_length=300)
    meta_description = models.CharField(max_length=300)
    
    def __str__(self):
        if self.meta_title:
            return self.meta_title
        else:
            return "None"
    
# Privacy Policy
class privacyPolicyPage(models.Model):
    policy = RichTextField()

    def __str__(self):
        if self.policy:
            return self.policy
        else:
            return "None"
        
class privacyPolicyPageSEO(models.Model):
    meta_title = models.CharField(max_length=300)
    meta_description = models.CharField(max_length=300)
    def __str__(self):
        if self.meta_title:
            return self.meta_title
        else:
            return "None"
        
# Agreement
class agreement(models.Model):
    service = models.ForeignKey(pricing, on_delete=models.CASCADE, related_name='service_agreements')
    client = models.ForeignKey(User, on_delete=models.CASCADE, related_name='client_agreement')
    name = models.CharField(max_length=200)
    phone = models.CharField(max_length=15)
    email = models.CharField(max_length=200)
    address = models.CharField(max_length=500)
    city = models.CharField(max_length=100)
    state = models.CharField(max_length=100)
    postal = models.CharField(max_length=100)
    is_signed = models.BooleanField(default=False)
    is_approved = models.BooleanField(default=False)
    singed_at = models.DateField(auto_now_add=True)
    

    