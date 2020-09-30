from django.db import models

# Create your models here.
class Project(models.Model):
    image = models.ImageField(upload_to='images/')
    name = models.CharField(max_length=200, default="")
    github_url = models.CharField(max_length=200, default="", blank=True)
    demo_url = models.CharField(max_length=200, default="", blank=True)
    admin_credentials = models.CharField(max_length=200, default="", blank=True)
    summary = models.CharField(max_length=2000, blank=True)
    is_personal = models.BooleanField(default=True)

    def __str__(self):
        return self.summary
