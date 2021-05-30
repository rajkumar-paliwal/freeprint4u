from django.db import models
from django.contrib.auth.models import User
from orders.models import Orders

STATUS = (('W1', 'Preparing'), ('W2', 'Ready to dispatch'), ('W3', 'Dispatched') ,('W4', 'Delivered'))
 
# Create your models here.

class Delivery(models.Model):
    orderid = models.ForeignKey(Orders, on_delete=models.CASCADE,null=True )    
    trackingid = models.CharField(max_length=100, null=True)
    userid = models.ForeignKey(User, on_delete=models.CASCADE, null=True)  
    courierservice = models.TextField(max_length=100, null=True)  
    status = models.CharField(max_length=100 , choices=STATUS , null=True) 
    statusdate = models.DateTimeField(auto_now_add=False , null=True )
    deliverydate = models.DateTimeField(auto_now_add=False)

    def __str__(self):
        return self.orderid