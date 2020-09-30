from django.shortcuts import render, get_object_or_404
from .models import Project


# Create your views here.
def home(request):
    projects = Project.objects
    return render(request, 'resume/home.html', {'projects' : projects, 'backhome': 'False'})

def backhome(request):
    projects = Project.objects
    return render(request, 'resume/home.html', {'projects' : projects, 'backhome': 'True'})

def projectdetail(request, job_id):
    project_detail = get_object_or_404(Project, pk=job_id)
    return render(request, 'resume/projectdetail.html', {'project': project_detail}) 
