from django.db import models
from ckeditor.fields import RichTextField

class ContactInfo(models.Model):
    box1_icon = models.CharField(max_length=500, blank=True, null=True)
    box1_title = models.CharField(max_length=250, blank=True, null=True)
    box1_description = RichTextField(blank=True, null=True)
    
    box2_icon = models.CharField(max_length=500, blank=True, null=True)
    box2_title = models.CharField(max_length=250, blank=True, null=True)
    box2_description = RichTextField(blank=True, null=True)
    
    box3_icon = models.CharField(max_length=500, blank=True, null=True)
    box3_title = models.CharField(max_length=250, blank=True, null=True)
    box3_description = RichTextField(blank=True, null=True)
    
    map_iframe = models.TextField(blank=True, null=True)

class contact(models.Model):
    name = models.CharField(max_length=255)
    email = models.EmailField(max_length=500)
    phone = models.IntegerField()
    message = models.TextField(blank=True)

class ContactPageSEO(models.Model):
    meta_title = models.CharField(max_length=500, blank=True, null=True)
    meta_description = models.CharField(max_length=1000, blank=True, null=True)

class Subscriber(models.Model):
    email = models.EmailField(unique=True)
    subscribe_date = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.email