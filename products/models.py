from django.db import models
PRODUCTTYPES = (('PHOTO', 'Photo Print'), ('DOC', 'Document print'))
PRODUCTSIZES = (('6X4', '6X4'), ('5X5', '5X5'),('7X5', '7X5'),('8X6', '8X6'))

# Create your models here.

class Products(models.Model):
    productname =  models.CharField(max_length=100, null=True) 
    producttype = models.CharField(max_length=100, choices=PRODUCTTYPES ,null=True )       
    sizename = models.TextField(max_length=100,null=True )
    papertype = models.CharField(max_length=100, null=True) # make it choice
    unitprice = models.FloatField(null=True)          
    status = models.IntegerField(null=True)
      
    def _str_(self):
        return self.productname