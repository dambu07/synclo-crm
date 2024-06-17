from django.shortcuts import render, redirect, get_object_or_404
from homepage.models import *
from aboutpage.models import *
from authapp.models import *
from adminapp.forms import *
from blog.models import *
from servicepage.models import *
from portfoliopage.models import *
from pricingpage.models import *
from crm.models import *
from settings.models import *
from legals.models import agreement
from legals.forms import agreementStatusForm
from django.contrib.auth.decorators import login_required
from django.db.models import Sum
from core.decorators import admin_role_required, both_role_required
from django.conf import settings
from django.core.mail import EmailMessage
from django.template.loader import render_to_string
from django.contrib import messages
from analytics.utils import *


# Admin HomePage
@login_required(login_url='signIn')
@both_role_required
def adminHome(request):
    
    # Revenue Expense
    total_revenue = Payments.objects.aggregate(total_revenue=Sum('payment_ammount'))
    total_revenue = total_revenue['total_revenue'] if total_revenue['total_revenue'] is not None else 0

    total_expense = Expense.objects.aggregate(total_expense=Sum('amount'))
    total_expense = total_expense['total_expense'] if total_expense['total_expense'] is not None else 0

    profit = total_revenue - total_expense
    
    # Invoices
    invoice = Invoice.objects.all()
    paid_count = Invoice.objects.filter(status='PAID').count()
    unpaid_count = Invoice.objects.filter(status='UNPAID').count()
    
    # Count tasks for each status
    tasks = crmTasks.objects.all()
    to_do_count = crmTasks.objects.filter(status='to_do').count()
    in_progress_count = crmTasks.objects.filter(status='in_progress').count()
    done_count = crmTasks.objects.filter(status='done').count()
    
    # Project
    project_count = crmProjects.objects.all().count()
    client_project = crmProjects.objects.filter(project_type='client_project').count()
    internal_project = crmProjects.objects.filter(project_type='internal_project').count()
    
    # Payments
    payments = Payments.objects.all().order_by('-payment_date')
    expenses = Expense.objects.all().order_by('-date_of_expense')
    
    service_sections = serviceSection.objects.all()
    projects_sections = projectsSection.objects.all()
    project_categories = projectCategory.objects.all()
    fun_fact_sections = funFactSection.objects.all()
    testimonials_sections = testimonialsSection.objects.all()
    team_members = teamSection.objects.all()
    clients = clientsSection.objects.all()
    blog  = blogs.objects.all()
    blog_categories = blogCategory.objects.all()
    contact_submissions = contact.objects.all()
    subscribers = Subscriber.objects.all()
    
    # Analytics Data
    analytics = analyticsData(request)
    
    # Delete blank invoices
    Invoice.delete_blank_invoices()
    
    context = {
        'title' : 'Dashboard',
        'services': service_sections,
        'projects': projects_sections,
        'project_categories': project_categories,
        'funfacts': fun_fact_sections,
        'testimonials': testimonials_sections,
        'teams': team_members,
        'clients': clients,
        'blog': blog,
        'blog_categories' : blog_categories,
        'contact_submissions' : contact_submissions,
        'subscribers' : subscribers,
        'payments' : payments,
        'expenses' : expenses,
        
        # Revenue Expense Chart
        'total_revenue': total_revenue,
        'total_expense': total_expense,
        'profit' : profit,
        
        # Invoice Chart
        'invoice': invoice,
        'paid_invoice' : paid_count,
        'unpaid_invoice' : unpaid_count,
        
        # Task Chart
        'tasks': tasks,
        'to_do' : to_do_count,
        'in_progress' : in_progress_count,
        'done' : done_count,
        
        # Project Chart
        'project_count' : project_count,
        'client_project' :  client_project,
        'internal_project' : internal_project,
        
        # Analytics
        'analytics' : analytics,
    }
    
    return render(request, 'admin/front/main/index.html', context)

# Admin Blog
@login_required(login_url='signIn')
@both_role_required
def adminBlogHome(request):
    blog  = blogs.objects.all()
    
    context = {
        'title' : 'Blogs',
        'blogs': blog
    }
    
    return render(request, 'admin/front/main/blog/blogs.html', context)

@login_required(login_url='signIn')
@both_role_required
def adminBlogCreate(request):
    if request.method == 'POST':
        form = BlogForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            messages.success(request, 'Blog created successfully!')
            return redirect('adminBlogHome')
    else:
        form = BlogForm()
    
    context = {
        'title' : 'Create Blog',
        'form': form
    }
    
    return render(request, 'admin/front/main/blog/create.html', context)

@login_required(login_url='signIn')
@both_role_required
def adminBlogEdit(request, slug):
    blog = get_object_or_404(blogs, slug=slug)
    if request.method == 'POST':
        form = BlogForm(request.POST, request.FILES, instance=blog)
        if form.is_valid():
            form.save()
            messages.success(request, 'Blog updated successfully!')
            return redirect('adminBlogHome')
    else:
        form = BlogForm(instance=blog)
    
    context = {
        'title' : 'Edit Blog',
        'form': form,
        'blog' : blog
    }
    
    return render(request, 'admin/front/main/blog/edit.html', context)

@login_required(login_url='signIn')
@both_role_required
def adminBlogDelete(request, slug):
    blog = get_object_or_404(blogs, slug=slug)
    blog.delete()
    messages.warning(request, 'Blog deleted!')
    return redirect('adminBlogHome')

# Admin Blog Category
@login_required(login_url='signIn')
@both_role_required
def adminBlogCategoryHome(request):
    blog_categories = blogCategory.objects.all()
    
    context = {
        'title' : 'Blog Categories',
        'blog_categories': blog_categories,
    }
    
    return render(request, 'admin/front/main/blog/partial/category/categories.html', context)

@login_required(login_url='signIn')
def adminBlogCategoryCreate(request):
    if request.method == 'POST':
        form = BlogCategoryForm(request.POST)
        if form.is_valid():
            form.save()
            messages.success(request, 'Category created successfully!')
            return redirect('adminBlogCategoryHome')
    else:
        form = BlogCategoryForm()
    
    context = {
        'title' : 'Create Blog Category',
        'form': form,
    }
    
    return render(request, 'admin/front/main/blog/partial/category/create.html', context)

@login_required(login_url='signIn')
@both_role_required
def adminBlogCategoryEdit(request, slug):
    blog_category = get_object_or_404(blogCategory, slug=slug)
    if request.method == 'POST':
        form = BlogCategoryForm(request.POST, instance=blog_category)
        if form.is_valid():
            form.save()
            messages.success(request, 'Category updated successfully!')
            return redirect('adminBlogCategoryHome')
    else:
        form = BlogCategoryForm(instance=blog_category)
    
    context = {
        'title' : 'Edit Blog Category',
        'form': form,
        'blog_category' : blog_category,
    }
    
    return render(request, 'admin/front/main/blog/partial/category/edit.html', context)

@login_required(login_url='signIn')
@both_role_required
def adminBlogCategoryDelete(request, slug):
    blog_category = get_object_or_404(blogCategory, slug=slug)
    blog_category.delete()
    messages.warning(request, 'Category deleted!')
    return redirect('adminBlogCategoryHome')

# Admin Services
@login_required(login_url='signIn')
@admin_role_required
def serviceHome(request):
        services = serviceSection.objects.all()
        
        context = {
            'title' : 'Services',
            'services': services,
        }
        
        return render(request, 'admin/front/main/service/services.html', context)

@login_required(login_url='signIn')
@admin_role_required
def createService(request):
        if request.method == 'POST':
            form = serviceForm(request.POST, request.FILES)
            if form.is_valid():
                form.save()
                messages.success(request, 'Service created successfully!')
                return redirect('services')
        else:
            form = serviceForm()
        
        context = {
            'title' : 'Create Service',
            'form': form,
        }
        
        return render(request, 'admin/front/main/service/create.html', context)

@login_required(login_url='signIn')
@admin_role_required
def editService(request, slug):
        service = get_object_or_404(serviceSection, slug=slug)
        if request.method == 'POST':
            form = serviceForm(request.POST, request.FILES, instance=service)
            if form.is_valid():
                form.save()
                messages.success(request, 'Service updated successfully!')
                return redirect('services')
        else:
            form = serviceForm(instance=service)
        
        context = {
            'title' : 'Edit Service',
            'form': form,
            'service': service,
        }
        
        return render(request, 'admin/front/main/service/edit.html', context)

@login_required(login_url='signIn')
@admin_role_required
def deleteService(request, slug):
        service = get_object_or_404(serviceSection, slug=slug)
        service.delete()
        messages.warning(request, 'Service deleted!')
        return redirect('services')

# Admin Projects
@login_required(login_url='signIn')
@admin_role_required
def projectHome(request):
        projects = projectsSection.objects.all()
        
        context = {
            'title' : 'Projects',
            'projects': projects
        }
        
        return render(request, 'admin/front/main/project/projects.html', context)

@login_required(login_url='signIn')
@admin_role_required
def createProject(request):
        form = ProjectForm(request.POST, request.FILES)
        if request.method == 'POST':
            if form.is_valid():
                form.save()
                messages.success(request, 'Project created successfully!')
                return redirect('projects')  # Redirect to the projects page after successful edit
        else:
            form = ProjectForm()

        context = {
            'title': 'Create Project',
            'form': form,
        }
        return render(request, 'admin/front/main/project/create.html', context)

@login_required(login_url='signIn')
@admin_role_required
def editProject(request, slug):
        project = get_object_or_404(projectsSection, slug=slug)
        
        if request.method == 'POST':
            form = ProjectForm(request.POST, request.FILES, instance=project)
            if form.is_valid():
                form.save()
                messages.success(request, 'Project updated successfully!')
                return redirect('projects')  # Redirect to the projects page after successful edit
        else:
            form = ProjectForm(instance=project)
        
        context = {
            'title' : 'Edit',
            'form': form,
            'project': project,
        }
        return render(request, 'admin/front/main/project/edit.html', context)

@login_required(login_url='signIn')
@admin_role_required
def delete_project(request, slug):
        project = projectsSection.objects.filter(slug=slug)
        project.delete()
        messages.warning(request, 'Project deleted!')
        return redirect('projects')

# Admin Projects Category
@login_required(login_url='signIn')
@admin_role_required
def projectCategoryHome(request):
        project_categories = projectCategory.objects.all()
        
        context = {
            'title' : 'Projects Category',
            'project_categories': project_categories,
        }
        
        return render(request, 'admin/front/main/project/partial/category/category.html', context)

@login_required(login_url='signIn')
@admin_role_required
def createProjectCategory(request):
        form = ProjectCategoryForm(request.POST, request.FILES)
        if request.method == 'POST':
            if form.is_valid():
                form.save()
                messages.success(request, 'Category created successfully!')
                return redirect('projectCategories')  # Redirect to the projects page after successful edit
        else:
            form = ProjectCategoryForm()

        context = {
            'title': 'Create Project Category',
            'form': form,
        }
        return render(request, 'admin/front/main/project/partial/category/create.html', context)

@login_required(login_url='signIn')
@admin_role_required
def editProjectCategory(request, slug):
        project_category = get_object_or_404(projectCategory, slug=slug)
        
        if request.method == 'POST':
            form = ProjectCategoryForm(request.POST, request.FILES, instance=project_category)
            if form.is_valid():
                form.save()
                messages.success(request, 'Category updated successfully!')
                return redirect('projectCategories')  # Redirect to the projects page after successful edit
        else:
            form = ProjectCategoryForm(instance=project_category)
        
        context = {
            'title' : 'Edit',
            'form': form,
            'project_category': project_category,
        }
        return render(request, 'admin/front/main/project/partial/category/edit.html', context)

@login_required(login_url='signIn')
@admin_role_required
def deleteProjectCategory(request, slug):
        project_category = projectCategory.objects.filter(slug=slug)
        project_category.delete()
        messages.warning(request, 'Category deleted!')
        return redirect('projectCategories')

# Admin Testimonials Element
@login_required(login_url='signIn')
@admin_role_required
def testimonialHome(request):
    testimonials = testimonialsSection.objects.all()
    
    context = {
        'title' : 'Testimonials',
        'testimonials': testimonials,
    }
    
    return render(request, 'admin/front/main/testimonial/testimonials.html', context)

@login_required(login_url='signIn')
@admin_role_required
def editTestimonial(request,slug):
    testimonial = get_object_or_404(testimonialsSection, slug=slug)
    
    if request.method == 'POST':
        form = TestimonialForm(request.POST, request.FILES, instance=testimonial)
        if form.is_valid():
            form.save()
            messages.success(request, 'Testimonial updated successfully!')
            return redirect('testimonials')  # Redirect to the projects page after successful edit
    else:
        form = TestimonialForm(instance=testimonial)
        
    context = {
        'title' : 'Edit',
        'form': form,
        'testimonial': testimonial,
    }
    return render(request, 'admin/front/main/testimonial/edit.html', context)

@login_required(login_url='signIn')
@admin_role_required
def createTestimonial(request):
    form = TestimonialForm(request.POST, request.FILES)
    if request.method == 'POST':
        if form.is_valid():
                form.save()
                messages.success(request, 'Testimonial created successfully!')
                return redirect('testimonials')  # Redirect to the projects page after successful edit
    else:
        form = TestimonialForm()

    context = {
        'title': 'Create Testimonial',
        'form': form,
    }
    return render(request, 'admin/front/main/testimonial/create.html', context)

@login_required(login_url='signIn')
@admin_role_required
def deleteTestimonial(request, slug):
    testimonial = testimonialsSection.objects.filter(slug=slug)
    testimonial.delete()
    messages.warning(request, 'Testimonial deleted!')
    return redirect('testimonials')

# Admin Funfacts Element
@login_required(login_url='signIn')
@admin_role_required
def funfactHome(request):
    funfacts = funFactSection.objects.all()
    
    context = {
        'title' : 'Funfacts',
        'funfacts': funfacts,
    }
    
    return render(request, 'admin/front/main/funfact/funfacts.html', context)

@login_required(login_url='signIn')
@admin_role_required
def editFunfact(request,slug):
    funfact = get_object_or_404(funFactSection, slug=slug)
    
    if request.method == 'POST':
        form = FunfactForm(request.POST, request.FILES, instance=funfact)
        if form.is_valid():
            form.save()
            messages.success(request, 'Fun fact updated successfully!')
            return redirect('funfacts')  # Redirect to the projects page after successful edit
    else:
        form = FunfactForm(instance=funfact)
        
    context = {
        'title' : 'Edit',
        'form': form,
        'funfact': funfact,
    }
    return render(request, 'admin/front/main/funfact/edit.html', context)

@login_required(login_url='signIn')
@admin_role_required
def createFunfact(request):
    form = FunfactForm(request.POST, request.FILES)
    if request.method == 'POST':
        if form.is_valid():
                form.save()
                messages.success(request, 'Fun fact created successfully!')
                return redirect('funfacts')  # Redirect to the projects page after successful edit
    else:
        form = FunfactForm()

    context = {
        'title': 'Create Funfact',
        'form': form,
    }
    return render(request, 'admin/front/main/funfact/create.html', context)

@login_required(login_url='signIn')
@admin_role_required
def deleteFunfact(request,slug):
    funfact = funFactSection.objects.filter(slug=slug)
    funfact.delete()
    messages.warning(request, 'Fun fact deleted!')
    return redirect('funfacts')

# Admin Team Member Element
@login_required(login_url='signIn')
@admin_role_required
def teamMemberHome(request):
    teams = teamSection.objects.all()
    
    context = {
        'title' : 'Team Members',
        'teams': teams,
    }
    
    return render(request, 'admin/front/main/team/team.html', context)
    
@login_required(login_url='signIn')
@admin_role_required
def editTeamMember(request,slug):
    team = get_object_or_404(teamSection, slug=slug)
    
    if request.method == 'POST':
        form = TeamMemberForm(request.POST, request.FILES, instance=team)
        if form.is_valid():
            form.save()
            messages.success(request, 'Team updated successfully!')
            return redirect('teams')  # Redirect to the projects page after successful edit
    else:
        form = TeamMemberForm(instance=team)
        
    context = {
        'title' : 'Edit',
        'form': form,
        'team': team,
    }
    return render(request, 'admin/front/main/team/edit.html', context)

@login_required(login_url='signIn')
@admin_role_required
def createTeamMember(request):
    form = TeamMemberForm(request.POST, request.FILES)
    if request.method == 'POST':
        if form.is_valid():
                form.save()
                messages.success(request, 'Team created successfully!')
                return redirect('teams')  # Redirect to the projects page after successful edit
    else:
        form = TeamMemberForm()

    context = {
        'title': 'Create Team Member',
        'form': form,
    }
    return render(request, 'admin/front/main/team/create.html', context)
    
@login_required(login_url='signIn')
@admin_role_required
def deleteTeamMember(request,slug):
    team = teamSection.objects.filter(slug=slug)
    team.delete()
    messages.warning(request, 'Team deleted!')
    return redirect('teams')

# Admin Clinet Element
@login_required(login_url='signIn')
@admin_role_required
def clientHome(request):
    clients = clientsSection.objects.all()
    
    context = {
        'title' : 'Clients',
        'clients': clients,
    }
    
    return render(request, 'admin/front/main/client/clients.html', context)

@login_required(login_url='signIn')
@admin_role_required
def editClient(request,slug):
    client = get_object_or_404(clientsSection, slug=slug)
    
    if request.method == 'POST':
        form = ClientsForm(request.POST, request.FILES, instance=client)
        if form.is_valid():
            form.save()
            messages.success(request, 'Client updated successfully!')
            return redirect('clients')  # Redirect to the projects page after successful edit
    else:
        form = ClientsForm(instance=client)
        
    context = {
        'title' : 'Edit',
        'form': form,
        'client': client,
    }
    return render(request, 'admin/front/main/client/edit.html', context)
    
@login_required(login_url='signIn')
@admin_role_required
def createClient(request):
    form = ClientsForm(request.POST, request.FILES)
    if request.method == 'POST':
        if form.is_valid():
                form.save()
                messages.success(request, 'Client created successfully!')
                return redirect('clients')  # Redirect to the projects page after successful edit
    else:
        form = ClientsForm()

    context = {
        'title': 'Create Client',
        'form': form,
    }
    return render(request, 'admin/front/main/client/create.html', context)

@login_required(login_url='signIn')
@admin_role_required
def deleteClient(request,slug):
    client = clientsSection.objects.filter(slug=slug)
    client.delete()
    messages.warning(request, 'Client deleted!')
    return redirect('clients')

# Admin Pricing Element
@login_required(login_url='signIn')
@admin_role_required
def adminPricingHome(request):
    pricingLists = pricing.objects.all()
    context = {
        'title': 'Pricing',
        'pricingLists': pricingLists,
    }
    return render(request, 'admin/front/main/pricing/pricing.html', context)

@login_required(login_url='signIn')
@admin_role_required
def editPricing(request, slug):
    pricingLists = get_object_or_404(pricing, slug=slug)
    
    if request.method == 'POST':
        form = PricingForm(request.POST, instance=pricingLists)
        if form.is_valid():
            form.save()
            messages.success(request, 'Pricing updated successfully!')
            return redirect('pricing')
    else:
        form = PricingForm(instance=pricingLists)
    context = {
        'title': 'Edit',
        'form': form,
        'pricing': pricingLists,
    }
    return render(request, 'admin/front/main/pricing/edit.html', context)

@login_required(login_url='signIn')
@admin_role_required
def createPricing(request):
    if request.method == 'POST':
        form = PricingForm(request.POST)
        if form.is_valid():
            form.save()
            messages.success(request, 'Pricing created successfully!')
            return redirect('pricing')
    else:
        form = PricingForm()
    context = {
        'title' : 'Create Pricing',
        'form' : form
    }
    return render(request, 'admin/front/main/pricing/create.html', context)

@login_required(login_url='signIn')
@admin_role_required
def deletePricing(request, slug):
    pricing_obj = get_object_or_404(pricing, slug=slug)
    pricing_obj.delete()
    messages.warning(request, 'Pricing deleted!')
    return redirect('pricing')

# Home Page Admin
@login_required(login_url='signIn')
@admin_role_required
def homeEditAdmin(request):
    homeSEO = HomePageSEO.objects.first()
    banner = bannerSection.objects.first()


    if request.method == 'POST':
        if 'meta_title' in request.POST:
            SeoForm = HomePageSEOForm(request.POST, instance=homeSEO)
            if SeoForm.is_valid():
                SeoForm.save()
                messages.success(request, 'Home page seo updated successfully!')
                return redirect('homePageEditadm')
        elif 'title' in request.POST:
            form = BannerForm(request.POST, request.FILES, instance=banner)
            if form.is_valid():
                form.save()
                messages.success(request, 'Home page banner updated successfully!')
                return redirect('homePageEditadm')
        else:
            return redirect('homePageEditadm')
    else:
        SeoForm = HomePageSEOForm(instance=homeSEO)
        form = BannerForm(instance=banner)
    
    context = {
        'title': 'Edit Home Page',
        'SeoForm': SeoForm,
        'form' : form,
        'banner' : banner,
    }
        
    return render(request, 'admin/front/main/pages/home.html', context)

# About Page Admin
@login_required(login_url='signIn')
@admin_role_required
def aboutEditAdmin(request):
    about = aboutSettings.objects.first()
    aboutSEO = AboutPageSEO.objects.first()
    
    if request.method == 'POST':
        if 'title_white' in request.POST:
            form = AboutPageForm(request.POST, request.FILES, instance=about)
            if form.is_valid():
                form.save()
                messages.success(request, 'About page updated successfully!')
                return redirect('aboutPageEditadm')
            
        elif 'meta_title' in request.POST:
            seoForm = AboutPageSEOForm(request.POST, instance=aboutSEO)
            if seoForm.is_valid():
                seoForm.save()
                messages.success(request, 'About page seo updated successfully!')
                return redirect('aboutPageEditadm')
        else:
            return redirect('aboutPageEditadm')
        
    else:
        form = AboutPageForm(instance=about)
        seoForm = AboutPageSEOForm(instance=aboutSEO)
                                
    context = {
        'title': 'Edit About Page',
        'about': about,
        'form': form,
        'SeoForm': seoForm,
    }
           
    return render(request, 'admin/front/main/pages/about.html', context)

# Service Page Admin
@login_required(login_url='signIn')
@admin_role_required
def serviceEditAdmin(request):
    serviceSEO = ServicePageSEO.objects.first()
    if request.method == 'POST':
        seoForm = ServicePageSEOForm(request.POST, instance=serviceSEO)
        if seoForm.is_valid():
            seoForm.save()
            messages.success(request, 'Service page seo updated successfully!')
            return redirect ('servicePageEditadm')
    else:
        seoForm = ServicePageSEOForm(instance=serviceSEO)
        
    context = {
        'title': 'Edit Service Page',
        'seoForm' : seoForm
    }
        
    return render(request, 'admin/front/main/pages/service.html', context)

# Pricing Page Admin
@login_required(login_url='signIn')
@admin_role_required
def pricingEditAdmin(request):
    seo = pricingPageSEO.objects.first()
    if request.method == 'POST':
        form = pricingPageSEOForm(request.POST, instance=seo)
        if form.is_valid():
            form.save()
            messages.success(request, 'Pricing page seo updated successfully!')
            return redirect('pricingPageEditadm')
    else:
        form = pricingPageSEOForm(instance=seo)
    context = {
        'title' : 'Edit Pricing Page',
        'form' : form
    }
    return render(request, 'admin/front/main/pages/pricing.html', context)

# Project Page Admin
@login_required(login_url='signIn')
@admin_role_required
def portfolioEditAdmin(request):
    portfolioSEO = PortfolioPageSEO.objects.first()
    if request.method == 'POST':
        seoForm = PortfolioPageSEOForm(request.POST, instance=portfolioSEO)
        if seoForm.is_valid():
            seoForm.save()
            messages.success(request, 'Portfolio/Project page seo updated successfully!')
            return redirect ('projectPageEditadm')
    else:
        seoForm = PortfolioPageSEOForm(instance=portfolioSEO)
    context = {
        'title': 'Edit Portfolio Page',
        'seoForm' : seoForm
    }
    return render(request, 'admin/front/main/pages/portfolio.html', context)

# Contact Page Admin
@login_required(login_url='signIn')
@admin_role_required
def contactEditAdmin(request):
    contactInfo = ContactInfo.objects.first()
    contactSEO = ContactPageSEO.objects.first()

    form = ContactInfoForm(instance=contactInfo)
    SeoForm = ContactPageSEOForm(instance=contactSEO)

    if request.method == 'POST':
        if 'box1_title' in request.POST:
            form = ContactInfoForm(request.POST, instance=contactInfo)
            if form.is_valid():
                form.save()
                messages.success(request, 'Contact page updated successfully!')
                return redirect ('contactPageEditadm')
        elif 'meta_title' in request.POST:
            SeoForm = ContactPageSEOForm(request.POST, instance=contactSEO)
            if SeoForm.is_valid():
                SeoForm.save()
                messages.success(request, 'Contact page seo updated successfully!')
                return redirect('contactPageEditadm')
        else:
            return redirect('contactPageEditadm')

    context = {
        'title': 'Edit Contact Page',
        'form': form,
        'seoForm' : SeoForm,
        'info' : contactInfo,
    }
    return render(request, 'admin/front/main/pages/contact.html', context)

@login_required(login_url='signIn')
def contactSubmissionsAdmin(request):
    page_obj = contact.objects.all()

    context = {
        'title': 'Contact Submissions',
        'page_obj': page_obj,
    }
    return render(request, 'admin/front/main/pages/partial/contactsubmission.html', context)

@login_required(login_url='signIn')
@admin_role_required
def deleteSubmissionAdmin(request, id):
    contactData = contact.objects.filter(id=id)
    contactData.delete()
    messages.warning(request, 'Deleted successfully!')
    return redirect('contactSubmissionsadm')

# Agreement Data Admin
@login_required(login_url='signIn')
@admin_role_required
def agreementSubmissonsAdmin(request):
    agreement_data = agreement.objects.all()
    context = {
        'title' : 'Agreement Submissions',
        'agreement_data' : agreement_data
    }
    return render(request, 'admin/front/main/pages/partial/agreementsubmissions.html', context)

@login_required(login_url='signIn')
@admin_role_required
def agreementDeleteAdmin(request, id):
    single_data = get_object_or_404(agreement, id=id)
    single_data.delete()
    messages.warning(request, 'Deleted successfully!')
    return redirect('agreementSubmissonsAdmin')

@login_required(login_url='signIn')
@admin_role_required
def agreementDetailAdmin(request, id):
    detail_data = get_object_or_404(agreement, id=id)
    if request.method == 'POST':
        form = agreementStatusForm(request.POST, instance=detail_data)
        if form.is_valid():
            form.save()

            # Send approval confirmation email
            if detail_data.is_approved:  # Check if the agreement is approved
                website_settings = websiteSetting.objects.first()
                header_footer = HeaderFooter.objects.first()
                subject = 'Agreement Approval Confirmation'
                from_email = f'"{website_settings.name}" <{settings.DEFAULT_FROM_EMAIL}>'
                
                # Render the HTML email template
                html_message = render_to_string('admin/front/main/email/agreement_confirmation.html', {
                    'data': detail_data,
                    'settings': website_settings,
                    'footer' : header_footer,
                })

                # Send the HTML email
                email_message = EmailMessage(
                    subject=subject,
                    body=html_message,
                    from_email=from_email,
                    to=[detail_data.email],
                )
                email_message.content_subtype = 'html'
                email_message.send()

            return redirect('agreementDetailAdmin', id=detail_data.id)
    else:
        form = agreementStatusForm(instance=detail_data)
        
    context = {
        'data': detail_data,
        'form': form
    }
    return render(request, 'admin/front/main/pages/partial/agreement_detail.html', context)

# Admin Settings
@login_required(login_url='signIn')
@admin_role_required
def adminWebsiteSettings(request):
    websiteSettings = websiteSetting.objects.first()
    if request.method == 'POST':
        settingForm = WebsiteSettingsForm(request.POST, request.FILES, instance=websiteSettings)
        if settingForm.is_valid():
            settingForm.save()
            messages.success(request, 'System settings updated successfully!')
            return redirect('websiteSettingsadm')
    else:
        settingForm = WebsiteSettingsForm(instance=websiteSettings)
        
    context = {
        'title': 'System Settings',
        'settings': websiteSettings,
        'settingForm': settingForm,
        'form': settingForm,
    }
    return render(request, 'admin/front/main/settings/website.html', context)

@login_required(login_url='signIn')
@admin_role_required
def adminHeaderFooterSettings(request):
    headerFooterSettings = HeaderFooter.objects.first()
    if request.method == 'POST':
        form = HeaderFooterForm(request.POST, instance=headerFooterSettings)
        if form.is_valid():
            form.save()
            messages.success(request, 'Header footer settings updated successfully!')
            return redirect('headerFooterSettingsadm')
    else:
        form = HeaderFooterForm(instance=headerFooterSettings)
    
    context = {
        'title': 'Header Footer Settings',
        'form': form,
    }
    return render(request, 'admin/front/main/settings/headerfooter.html', context)

@login_required(login_url='signIn')
@admin_role_required
def adminMenuSettings(request):
    menus = Menu.objects.all().order_by('order')
    context = {
        'title': 'Menu Settings',
        'menus': menus,
    }
    return render(request, 'admin/front/main/settings/menu/menu.html', context)

@login_required(login_url='signIn')
@admin_role_required
def adminMenuCreate(request):
    if request.method == 'POST':
        form = MenuForm(request.POST)
        if form.is_valid():
            order = form.cleaned_data['order']
            if Menu.objects.filter(order=order).exists():
                form.add_error('order', 'Order number already exists. Use a different order.')
            else:
                form.save()
                messages.success(request, 'Menu item created successfully!')
                return redirect('menuSettingsadm')
    else:
        form = MenuForm()
    context = {
        'title': 'Create Menu',
        'form': form,
    }
    return render(request, 'admin/front/main/settings/menu/create.html', context)

@login_required(login_url='signIn')
@admin_role_required
def adminMenuEdit(request, slug):
    menu = get_object_or_404(Menu, slug=slug)
    
    if request.method == 'POST':
        form = MenuForm(request.POST, instance=menu)
        if form.is_valid():
            order = form.cleaned_data['order']
            if Menu.objects.exclude(slug=slug).filter(order=order).exists():
                form.add_error('order', 'Order number already exists. Use a different order.')
            else:
                form.save()
                messages.success(request, 'Menu item updated successfully!')
                return redirect('menuSettingsadm')
    else:
        form = MenuForm(instance=menu)
    
    context = {
        'title': 'Edit',
        'form' : form,
        'menu': menu,
    }
    return render(request, 'admin/front/main/settings/menu/edit.html', context)

@login_required(login_url='signIn')
@admin_role_required
def adminMenuDelete(request, slug):
    menu = Menu.objects.filter(slug=slug)
    menu.delete()
    messages.warning(request, 'Menu item deleted!')
    return redirect('menuSettingsadm')

@login_required(login_url='signIn')
@admin_role_required
def adminSEOSettings(request):
    SeoSettings = SeoSetting.objects.first()
    if request.method == 'POST':
        form = SeoSettingForm(request.POST, request.FILES ,instance=SeoSettings)
        if form.is_valid():
            form.save()
            messages.success(request, 'SEO settings updated successfully!')
            return redirect('seoSettingsadm')
    else:
        form = SeoSettingForm(instance=SeoSettings)
    context = {
        'title': 'Seo Settings',
        'SeoSettings': SeoSettings,
        'form': form,
    }
    return render(request, 'admin/front/main/settings/seo.html', context)

# Error Page
def error_404(request, exception):
    return render(request, 'error/error_404.html', status=404)