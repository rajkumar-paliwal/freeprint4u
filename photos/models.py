from django.db import models

class Photos(models.Model):
    photofile = models.FileField(upload_to='photos/')
    imageType = models.CharField(max_length=100, null=True)