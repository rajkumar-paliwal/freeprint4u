from django.db import models
from django.contrib.auth.models import User
# Create your models here.


class Discount(models.Model):
    percentage = models.IntegerField(null=True)
    name =  models.CharField(max_length=100, null=True) 
    details = models.CharField(max_length=100, null=True)    
    discountlimit = models.IntegerField(null=True)  

# Create your models here.
class Users(models.Model):
    userid = models.OneToOneField(User,on_delete=models.CASCADE , null=True)
    phone = models.CharField(max_length=11, null=True )   
    discountid = models.ForeignKey(Discount, on_delete=models.CASCADE , null=True)   


    def __str__(self):
        return self.name