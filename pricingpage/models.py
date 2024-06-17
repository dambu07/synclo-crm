from django.db import models
from django.utils.text import slugify
from ckeditor.fields import RichTextField
from settings.models import websiteSetting

class pricing(models.Model):
    title = models.CharField(max_length=300)
    slug = models.SlugField(max_length=300, blank=True, null=True)
    price = models.CharField(max_length=300)
    description = RichTextField()
    button_text = models.CharField(max_length=200)
    button_url = models.CharField(max_length=1000)
    is_featured = models.BooleanField(default=False)
    featured_badge_title = models.CharField(max_length=200, blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    
    def save(self, *args, **kwargs):
        original_slug = slugify(self.title)
        queryset = pricing.objects.exclude(pk=self.pk)
        slug = original_slug
        counter = 1

        while queryset.filter(slug=slug).exists():
            slug = f"{original_slug}-{counter}"
            counter += 1

        self.slug = slug
        super().save(*args, **kwargs)
        
    def __str__(self):
        try:
            currency_name = websiteSetting.objects.first().currency_name
        except websiteSetting.DoesNotExist:
            currency_name = "Currency"
            
        return f"{self.title} - {self.price} {currency_name}"

class pricingPageSEO(models.Model):
    meta_title = models.CharField(max_length=200, blank=True, null=True)
    meta_description = models.CharField(max_length=500, blank=True, null=True)
    
    def __str__(self):
        return self.meta_title

