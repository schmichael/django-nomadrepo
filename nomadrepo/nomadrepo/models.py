from django.db import models


class Job(models.Model):
    name = models.CharField(max_length=255, primary_key=True)
    jobspec = models.TextField()
