from django.db import models
from address.models  import Address
from django.contrib.auth.models import User
from cart.models  import Cart 


# Create your models here.
class Orders(models.Model):
    userid = models.ForeignKey(User, on_delete=models.CASCADE , null=True )  
    addressid = models.ForeignKey(Address, on_delete=models.CASCADE, null=True)     
    cartid = models.ForeignKey(Cart, on_delete=models.CASCADE, null=True)      
    orderdate = models.DateTimeField(auto_now_add=True) 
    invoice = models.TextField(max_length=100)   
    orderstatus = models.TextField(max_length=100)    
    instructions  = models.TextField(max_length=150)
    lastmodifieddate = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name