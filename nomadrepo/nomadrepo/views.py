import logging

from django.shortcuts import get_object_or_404, render
from django.http import HttpResponse

from .models import Job

logger = logging.getLogger(__name__)

def index(request):
    jobs = Job.objects.order_by('name')
    context = {'jobs': jobs}
    return render(request, 'index.html', context)

def detail(request, job_name):
    logger.info("job name: ", job_name)
    job = get_object_or_404(Job, pk=job_name)
    return HttpResponse(job.jobspec, content_type="text/plain")
