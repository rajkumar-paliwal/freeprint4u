from django.db import models
from orders.models  import Orders 


# Create your models here.
class Transactions(models.Model):    
    orderid = models.ForeignKey(Orders, on_delete=models.CASCADE , null=True)
    paymentmethod = models.TextField(max_length=100, null=True)
    gatewaytransactionid = models.TextField(max_length=100, null=True)  
    transactionstatus = models.TextField(max_length=100 , null=True) 
    transactiondate = models.DateTimeField(auto_now_add=True )    
    lastmodifieddate = models.DateTimeField(auto_now_add=True )

    def __str__(self):
        return self.name
