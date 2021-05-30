from django.db import models

# Create your models here.

class EmailTemplate(models.Model):
    emailtemplateid = models.CharField(max_length=100)
    subject = models.TextField(max_length=100)
    header = models.TextField(max_length=100)  
    body = models.TextField(max_length=100) 
    footer = models.TextField(max_length=100)    
    subscribe = models.TextField(max_length=100)
    attachment = models.TextField(max_length=100)    
    date = models.DateTimeField(auto_now_add=True)


class Userdata(models.Model):
    email = models.CharField(max_length=100)
    name = models.TextField(max_length=100)
    phone = models.TextField(max_length=100)  
    targetarea = models.TextField(max_length=100) 
    targetage = models.TextField(max_length=100) 
    previousemaildate = models.DateTimeField(auto_now_add=True)
    emaildate = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name
