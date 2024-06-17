from django.db import models
from django.utils.text import slugify
from ckeditor.fields import RichTextField
from imagekit.models import ProcessedImageField

class aboutSettings(models.Model):
    top_title = models.CharField(max_length=300, blank=True, null=True)
    top_description = models.CharField(max_length=300, blank=True, null=True)
    title_white = models.CharField(max_length=200, blank=True, null=True)
    title_red = models.CharField(max_length=200, blank=True, null=True)
    heading = models.CharField(max_length=300, blank=True, null=True)
    description = RichTextField(blank=True, null=True)
    image = ProcessedImageField(upload_to="about/", blank=True, null=True, format='JPEG', options={'quality': 40})
    count_title1 = models.CharField(max_length=300, blank=True, null=True)
    years_of_experience = models.IntegerField(blank=True, null=True)
    count_title2 = models.CharField(max_length=300, blank=True, null=True)
    project_delivered = models.IntegerField(blank=True, null=True)
    button_text = models.CharField(max_length=300, blank=True, null=True)
    button_url = models.CharField(max_length=500, blank=True, null=True)
    
    def __str__(self):
        return self.title_white 
    
    class Meta:
        verbose_name_plural = "1. About Page Intro"
    

class teamSection(models.Model):
    name = models.CharField(max_length=200, blank=True, null=True)
    about = models.TextField(blank=True, null=True)
    slug = models.SlugField(max_length=200, blank=True, null=True)
    position = models.CharField(max_length=200, blank=True, null=True)
    facebook = models.CharField(max_length=500, default="https://www.facebook.com", blank=True, null=True)
    twitter = models.CharField(max_length=500, default="https://twitter.com", blank=True, null=True)
    linkedin = models.CharField(max_length=500, default="https://www.linkedin.com", blank=True, null=True)
    image = ProcessedImageField(upload_to='team/', blank=True, null=True, format='JPEG', options={'quality': 40})
    
    def save(self, *args, **kwargs):
        if self.name:
            original_slug = slugify(self.name)
            queryset = teamSection.objects.exclude(pk=self.pk)
            slug = original_slug
            counter = 1

            while queryset.filter(slug=slug).exists():
                slug = f"{original_slug}-{counter}"
                counter += 1

            self.slug = slug
            super().save(*args, **kwargs)
        
    def __str__(self):
        return self.name
    
    def get_image(self):
        image = self.image.url
        return image
    
    class Meta:
        verbose_name_plural = "2. Team Members"

class clientsSection(models.Model):
    company_name = models.CharField(max_length=200, blank=True, null=True)
    slug = models.SlugField(max_length=200, blank=True, null=True)
    company_url = models.CharField(max_length=500, blank=True, null=True)
    image = ProcessedImageField(upload_to='clients/', format='JPEG', options={'quality': 40})
        
    def save(self, *args, **kwargs):
        if self.company_name:
            original_slug = slugify(self.company_name)
            queryset = teamSection.objects.exclude(pk=self.pk)
            slug = original_slug
            counter = 1

            while queryset.filter(slug=slug).exists():
                slug = f"{original_slug}-{counter}"
                counter += 1

            self.slug = slug
            super().save(*args, **kwargs)
    
    def __str__(self):
        return self.company_name
    
    class Meta:
        verbose_name_plural = "3. Clients"
    
class AboutPageSEO(models.Model):
    meta_title = models.CharField(max_length=500, blank=True, null=True)
    meta_description = models.CharField(max_length=1000, blank=True, null=True)
