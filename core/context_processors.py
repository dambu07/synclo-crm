from settings.models import *
from authapp.models import UserProfile
from userapp.models import supportTicket
from homepage.models import projectsSection
from django.conf import settings
from hrm.models import Notification
from django.db.models import Q

## Settings Context Proccessor
def website_settings_context(request):
    settings = websiteSetting.objects.first()
    return {'settings': settings}

def seo_settings_context(request):
    seo_settings = SeoSetting.objects.first()
    return {'seo_settings': seo_settings}

def menu_context(request):
    menus = Menu.objects.all().order_by('order')
    return {'menus': menus}

def header_footer_context(request):
    header_footer = HeaderFooter.objects.first()
    return {'header_footer': header_footer}

## User Profile Context Proccessor
def user_profile_context(request):
    user_profile = None
    if request.user.is_authenticated:
        user_profile = UserProfile.objects.filter(user=request.user).first()
    return {
        'user_profile': user_profile
    }

## Project Context Proccessor
def project_context(request):
    projects = projectsSection.objects.all().order_by('-title')
    return {'global_projects' : projects}

## Ticket Context Proccessor
def unsolved_tickets_context(request):
    opened_ticket = supportTicket.objects.filter(status='open')
    return {'opened_ticket' : opened_ticket}


## Demo Mode Template Context Proccessor
def demo_mode_enabled(request):
    return {'demo_mode_enabled': 'core.middleware.middleware.DemoModeMiddleware' in settings.MIDDLEWARE}

## Notification Context Proccessor
def notification_context(request):
    if request.user.is_authenticated:
        if request.user.role == 'admin':
            notifications = Notification.objects.all().order_by('-created_at')
        elif request.user.role == 'Manager' or request.user.role == 'HR':
            notifications = Notification.objects.filter(
                branch=request.user.userprofile.branch).order_by('-created_at')
        else:
            notifications = Notification.objects.filter(
                branch=request.user.userprofile.branch ).order_by('-created_at')
        
        unread_notification_count = Notification.objects.exclude(Q(readed_by=request.user)).count()
    
        return {'notifications': notifications, 'notification_count': unread_notification_count}
    else:
        return {'notifications': None, 'notification_count': 0}