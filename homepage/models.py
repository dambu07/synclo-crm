from django.db import models
from django.utils.text import slugify
from ckeditor.fields import RichTextField
from imagekit.models import ProcessedImageField

class bannerSection(models.Model):
    background_image = ProcessedImageField(upload_to='Home_images/', blank=True, null=True, format='JPEG', options={'quality': 40})
    title = models.CharField(max_length=500, blank=True, null=True)
    description = models.TextField(blank=True, null=True)
    button_text = models.CharField(max_length=200, blank=True, null=True)
    button_url = models.CharField(max_length=1000, blank=True, null=True)
    show_quote_form = models.BooleanField(default=True)

    def __str__(self):
        return self.title
    
class serviceSection(models.Model):
    image = ProcessedImageField(upload_to='Home_images/')
    title = models.CharField(max_length=200)
    slug = models.SlugField(max_length=220, blank=True, null=True)
    description = RichTextField(blank=True, null=True)
    
    def save(self, *args, **kwargs):
        original_slug = slugify(self.title)
        queryset = serviceSection.objects.exclude(pk=self.pk)
        slug = original_slug
        counter = 1

        while queryset.filter(slug=slug).exists():
            slug = f"{original_slug}-{counter}"
            counter += 1

        self.slug = slug
        super().save(*args, **kwargs)
    
    class Meta:
        verbose_name_plural = "2. Services"
    
class projectsSection(models.Model):
    image = ProcessedImageField(upload_to='Home_images/', format='JPEG', options={'quality': 40})
    title = models.CharField(max_length=200, blank=True, null=True)
    slug = models.SlugField(null=True, blank=True)
    category = models.ForeignKey('projectCategory',on_delete=models.CASCADE, related_name='prject_category')
    description = RichTextField(blank=True, null=True)
    client = models.CharField(max_length=300, blank=True, null=True)
    duration = models.CharField(max_length=300, blank=True, null=True)
    button_text = models.CharField(max_length=200, blank=True, null=True)
    button_url = models.CharField(max_length=500, blank=True, null=True)
    
    def save(self, *args, **kwargs):
        original_slug = slugify(self.title)
        queryset = projectsSection.objects.exclude(pk=self.pk)
        slug = original_slug
        counter = 1

        while queryset.filter(slug=slug).exists():
            slug = f"{original_slug}-{counter}"
            counter += 1

        self.slug = slug
        super().save(*args, **kwargs)
    
    class Meta:
        verbose_name_plural = "3. Projects"
        
class projectCategory(models.Model):
    title = models.CharField(max_length=255)
    slug = models.SlugField(max_length=255, null=True, blank=True)

    def save(self, *args, **kwargs):
        original_slug = slugify(self.title)
        queryset = projectCategory.objects.exclude(pk=self.pk)
        slug = original_slug
        counter = 1

        while queryset.filter(slug=slug).exists():
            slug = f"{original_slug}-{counter}"
            counter += 1

        self.slug = slug
        super().save(*args, **kwargs)
        
    def __str__(self):
        return self.title
    
    class Meta:
        verbose_name_plural = "4. Project Categories"

class funFactSection(models.Model):
    fact_count = models.IntegerField(blank=True, null=True)
    title = models.CharField(max_length=200, blank=True, null=True)
    slug = models.SlugField(max_length=255, null=True, blank=True)
    
    def save(self, *args, **kwargs):
        original_slug = slugify(self.title)
        queryset = funFactSection.objects.exclude(pk=self.pk)
        slug = original_slug
        counter = 1

        while queryset.filter(slug=slug).exists():
            slug = f"{original_slug}-{counter}"
            counter += 1

        self.slug = slug
        super().save(*args, **kwargs)
    
    def __str__(self):
        return self.title
    
    class Meta:
        verbose_name_plural = "5. Fun Facts"

class testimonialsSection(models.Model):
    title = models.CharField(max_length=200, blank=True, null=True)
    slug = models.SlugField(max_length=255, null=True, blank=True)
    client_name = models.CharField(max_length=300, blank=True, null=True)
    client_designation = models.CharField(max_length=300, blank=True, null=True)
    description = models.TextField(blank=True, null=True)
    
    def save(self, *args, **kwargs):
        original_slug = slugify(self.title)
        queryset = testimonialsSection.objects.exclude(pk=self.pk)
        slug = original_slug
        counter = 1

        while queryset.filter(slug=slug).exists():
            slug = f"{original_slug}-{counter}"
            counter += 1

        self.slug = slug
        super().save(*args, **kwargs)
    
    class Meta:
        verbose_name_plural = "6. Testimonials"

class HomePageSEO(models.Model):
    meta_title = models.CharField(max_length=500, blank=True, null=True)
    meta_description = models.CharField(max_length=1000, blank=True, null=True)

    

    