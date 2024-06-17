from django.urls import path
from adminapp.views import *
from settings.views import adminOpenaiSettings, adminPaymentMethodsSettings

urlpatterns = [
    path('admin/dashboard', adminHome, name='admin_home'),
    
    # Admin Blog URLS
    path('admin/blogs', adminBlogHome, name='adminBlogHome'),
    path('admin/blog/create', adminBlogCreate, name='adminBlogCreate'),
    path('admin/blog/edit/<slug:slug>', adminBlogEdit, name='adminBlogEdit'),
    path('admin/blog/delete/<slug:slug>', adminBlogDelete, name='adminBlogDelete'),

    # Admin Blog Category URLS
    path('admin/blog/categories', adminBlogCategoryHome, name='adminBlogCategoryHome'),
    path('admin/blog/category/create', adminBlogCategoryCreate, name='adminBlogCategoryCreate'),
    path('admin/blog/category/edit/<slug:slug>', adminBlogCategoryEdit, name='adminBlogCategoryEdit'),
    path('admin/blog/category/delete/<slug:slug>', adminBlogCategoryDelete, name='adminBlogCategoryDelete'),

    # Admin Service URLS
    path('admin/services', serviceHome, name='services'),
    path('admin/service/create', createService, name='createService'),
    path('admin/service/edit/<slug:slug>', editService, name='editService'),
    path('admin/service/delete/<slug:slug>', deleteService, name='deleteService'),
    
    # Admin Project URLS
    path('admin/projects', projectHome, name='projects'),
    path('admin/project/create', createProject, name='createProject'),
    path('admin/project/edit/<slug:slug>/', editProject, name='editProject'),
    path('admin/project/delete/<slug:slug>', delete_project, name='deleteProject'),
    
    # Admin Project Category URLS
    path('admin/project/categories', projectCategoryHome, name='projectCategories'),
    path('admin/project/category/create', createProjectCategory, name='createProjectCategory'),
    path('admin/project/category/edit/<slug:slug>/', editProjectCategory, name='editProjectCategory'),
    path('admin/project/category/delete/<slug:slug>', deleteProjectCategory, name='deleteProjectCategory'),
    
    # Admin Testimonials Element URLS
    path('admin/element/testimonials', testimonialHome, name='testimonials'),
    path('admin/element/testimonial/create', createTestimonial, name='createTestimonial'),
    path('admin/element/testimonial/edit/<slug:slug>/', editTestimonial, name='editTestimonial'),
    path('admin/element/testimonial/delete/<slug:slug>', deleteTestimonial, name='deleteTestimonial'),

    # Admin FunFact Element URLS
    path('admin/element/funfacts', funfactHome, name='funfacts'),
    path('admin/element/funfact/create', createFunfact, name='createFunfact'),
    path('admin/element/funfact/edit/<slug:slug>/', editFunfact, name='editFunfact'),
    path('admin/element/funfact/delete/<slug:slug>', deleteFunfact, name='deleteFunfact'),

    # Admin Team Element URLS
    path('admin/element/team-members', teamMemberHome, name='teams'),
    path('admin/element/team/create', createTeamMember, name='createTeam'),
    path('admin/element/team/edit/<slug:slug>/', editTeamMember, name='editTeam'),
    path('admin/element/team/delete/<slug:slug>', deleteTeamMember, name='deleteTeam'),
    
    # Admin Clinet Element URLS
    path('admin/element/clients', clientHome, name='clients'),
    path('admin/element/client/create', createClient, name='createClient'),
    path('admin/element/client/edit/<slug:slug>/', editClient, name='editClient'),
    path('admin/element/client/delete/<slug:slug>', deleteClient, name='deleteClient'),
    
    # Admin Pricing Element URLS
    path('admin/element/pricing', adminPricingHome, name='pricing'),
    path('admin/element/pricing/edit/<slug:slug>/', editPricing, name='editPricing'),
    path('admin/element/pricing/create', createPricing, name='createPricing'),
    path('admin/element/pricing/delete/<slug:slug>', deletePricing, name='deletePricing'),

    # Admin Page Edit
    path('admin/pages/edit/home-page', homeEditAdmin, name='homePageEditadm'),
    path('admin/pages/edit/about-page', aboutEditAdmin, name='aboutPageEditadm'),
    path('admin/pages/edit/service-page', serviceEditAdmin, name='servicePageEditadm'),
    path('admin/pages/edit/pricing-page', pricingEditAdmin, name='pricingPageEditadm'),
    path('admin/pages/edit/project-page', portfolioEditAdmin, name='projectPageEditadm'),
    path('admin/pages/edit/contact-page', contactEditAdmin, name='contactPageEditadm'),
    
    # Admin Contact Submissions
    path('admin/contact/submissions', contactSubmissionsAdmin, name='contactSubmissionsadm'),
    path('admin/contact/submission/delete/<int:id>', deleteSubmissionAdmin, name='deleteSubmissionadm'),
    
    # Admin Agreement Submissions
    path('admin/agreement/submissions', agreementSubmissonsAdmin, name='agreementSubmissonsAdmin'),
    path('admin/agreement/delete/<int:id>', agreementDeleteAdmin, name='agreementDeleteAdmin'),
    path('admin/agreement/view/<int:id>', agreementDetailAdmin, name='agreementDetailAdmin'),
    
    # Admin Settings
    path('admin/settings/system-settings', adminWebsiteSettings, name='websiteSettingsadm'),
    path('admin/settings/header-footer', adminHeaderFooterSettings, name='headerFooterSettingsadm'),
    path('admin/settings/menus', adminMenuSettings, name="menuSettingsadm"),
    path('admin/settings/menu/create', adminMenuCreate, name='menuCreateadm'),
    path('admin/settings/menu/edit/<slug:slug>', adminMenuEdit, name='menuEditadm'),
    path('admin/settings/menu/delete/<slug:slug>', adminMenuDelete, name='menuDeleteadm'),
    path('admin/settings/seo', adminSEOSettings, name='seoSettingsadm'),
    path('admin/settings/openai-settings/', adminOpenaiSettings, name='adminOpenaiSettings'),
    path('admin/settings/payment-methods/', adminPaymentMethodsSettings, name='adminPaymentMethodsSettings'),

]