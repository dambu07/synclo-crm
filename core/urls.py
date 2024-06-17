from django.contrib import admin
from django.urls import path ,include
from django.conf import settings
from django.conf.urls.static import static
from django.views.generic import RedirectView
from core.sitemaps import generate_sitemap

urlpatterns = [
    path('oldadmin/', admin.site.urls),
    path('admin/', RedirectView.as_view(pattern_name="signIn"), name='admin_redirect'),
    path('dashboard/', RedirectView.as_view(pattern_name="signIn"), name='user_redirect'),
    path('', include('adminapp.urls')),
    path('', include('userapp.urls')),
    path('', include('homepage.urls')),
    path('', include('aboutpage.urls')),
    path('', include('servicepage.urls')),
    path('', include('portfoliopage.urls')),
    path('', include('blog.urls')),
    path('', include('authapp.urls')),
    path('', include('pricingpage.urls')),
    path('', include('contactpage.urls')),
    path('', include('legals.urls')),
    path('', include('crm.urls')),
    path('', include('hrm.urls')),
    path('', include('reports.urls')),
    path('', include('marketing.urls')),
    path('', include('custompage.urls')),
    path('', include('order.urls')),
    path('', include('ai.urls')),
    path('sitemap.xml', generate_sitemap, name='generate_sitemap'),
    
]

handler404 = 'authapp.views.error_404'
handler404 = 'adminapp.views.error_404'
handler404 = 'crm.views.error_404'
handler404 = 'userapp.views.error_404'
handler404 = 'homepage.views.error_404'
handler404 = 'servicepage.views.error_404'
handler404 = 'portfoliopage.views.error_404'
handler404 = 'contactpage.views.error_404'
handler404 = 'aboutpage.views.error_404'
handler404 = 'blog.views.error_404'
handler404 = 'settings.views.error_404'
handler404 = 'legals.views.error_404'
handler404 = 'reports.views.error_404'
handler404 = 'marketing.views.error_404'

urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
   