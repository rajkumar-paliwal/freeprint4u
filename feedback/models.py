from django.db import models

# Create your models here.

class Feedback(models.Model):
    orderno = models.CharField(max_length=100 , null=True)
    rating = models.TextField(max_length=100 , null=True)   
    feedback  = models.TextField(max_length=150 , null=True)
    date = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name