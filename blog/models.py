from django.db import models
from django.utils.text import slugify
from ckeditor.fields import RichTextField
from authapp.models import UserProfile
from imagekit.models import ProcessedImageField


class blogs(models.Model):
    thumbnail = ProcessedImageField(upload_to='blogs', format='JPEG', options={'quality': 40})
    title = models.CharField(max_length=300)
    category = models.ForeignKey('blogCategory', on_delete=models.SET_NULL, null=True)
    slug = models.SlugField(max_length=350, blank=True, null=True)
    description = RichTextField()
    author = models.ForeignKey(UserProfile, on_delete=models.CASCADE)
    created_at = models.DateField(auto_now_add=True)
    updated_at = models.DateField(auto_now=True)

    def save(self, *args, **kwargs):
        if self.title:
            original_slug = slugify(self.title)
            queryset = blogs.objects.exclude(pk=self.pk)
            slug = original_slug
            counter = 1

            while queryset.filter(slug=slug).exists():
                slug = f"{original_slug}-{counter}"
                counter += 1

            self.slug = slug
            super().save(*args, **kwargs)
        
    def __str__(self):
        return self.title

class blogCategory(models.Model):
    name = models.CharField(max_length=300)
    slug = models.SlugField(max_length=350, blank=True, null=True)
    created_at = models.DateField(auto_now_add=True)
    updated_at = models.DateField(auto_now=True)
    
    def save(self, *args, **kwargs):
        if self.name:
            original_slug = slugify(self.name)
            queryset = blogs.objects.exclude(pk=self.pk)
            slug = original_slug
            counter = 1

            while queryset.filter(slug=slug).exists():
                slug = f"{original_slug}-{counter}"
                counter += 1

            self.slug = slug
            super().save(*args, **kwargs)
    
    def __str__(self):
        return self.name
    
