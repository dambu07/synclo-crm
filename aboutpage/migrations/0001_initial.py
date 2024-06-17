# Generated by Django 5.0.3 on 2024-03-13 15:30

import ckeditor.fields
import imagekit.models.fields
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='AboutPageSEO',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('meta_title', models.CharField(blank=True, max_length=500, null=True)),
                ('meta_description', models.CharField(blank=True, max_length=1000, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='aboutSettings',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('top_title', models.CharField(blank=True, max_length=300, null=True)),
                ('top_description', models.CharField(blank=True, max_length=300, null=True)),
                ('title_white', models.CharField(blank=True, max_length=200, null=True)),
                ('title_red', models.CharField(blank=True, max_length=200, null=True)),
                ('heading', models.CharField(blank=True, max_length=300, null=True)),
                ('description', ckeditor.fields.RichTextField(blank=True, null=True)),
                ('image', imagekit.models.fields.ProcessedImageField(blank=True, null=True, upload_to='about/')),
                ('count_title1', models.CharField(blank=True, max_length=300, null=True)),
                ('years_of_experience', models.IntegerField(blank=True, null=True)),
                ('count_title2', models.CharField(blank=True, max_length=300, null=True)),
                ('project_delivered', models.IntegerField(blank=True, null=True)),
                ('button_text', models.CharField(blank=True, max_length=300, null=True)),
                ('button_url', models.CharField(blank=True, max_length=500, null=True)),
            ],
            options={
                'verbose_name_plural': '1. About Page Intro',
            },
        ),
        migrations.CreateModel(
            name='clientsSection',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('company_name', models.CharField(blank=True, max_length=200, null=True)),
                ('slug', models.SlugField(blank=True, max_length=200, null=True)),
                ('company_url', models.CharField(blank=True, max_length=500, null=True)),
                ('image', imagekit.models.fields.ProcessedImageField(upload_to='clients/')),
            ],
            options={
                'verbose_name_plural': '3. Clients',
            },
        ),
        migrations.CreateModel(
            name='teamSection',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, max_length=200, null=True)),
                ('about', models.TextField(blank=True, null=True)),
                ('slug', models.SlugField(blank=True, max_length=200, null=True)),
                ('position', models.CharField(blank=True, max_length=200, null=True)),
                ('facebook', models.CharField(blank=True, default='https://www.facebook.com', max_length=500, null=True)),
                ('twitter', models.CharField(blank=True, default='https://twitter.com', max_length=500, null=True)),
                ('linkedin', models.CharField(blank=True, default='https://www.linkedin.com', max_length=500, null=True)),
                ('image', imagekit.models.fields.ProcessedImageField(blank=True, null=True, upload_to='team/')),
            ],
            options={
                'verbose_name_plural': '2. Team Members',
            },
        ),
    ]
