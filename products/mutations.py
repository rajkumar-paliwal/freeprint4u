import graphene
from django.core.exceptions import ObjectDoesNotExist
from django.db import transaction
from graphql_relay import from_global_id
from graphene import relay
from .types import *
import datetime
from django.contrib.auth.models import User
from graphql import GraphQLError
from users.types import UserType

class AddProductMutation(relay.ClientIDMutation):
    details = graphene.Field(ProductType)

    class Input:
         productname=graphene.String(required=True)
         producttype = graphene.String(required=True) 
         sizename = graphene.String(required=True) 
         papertype = graphene.String(required=True) 
         unitprice =graphene.String(required=True) 
         status=graphene.Int(required=True)

    @classmethod
    def mutate_and_get_payload(cls, root, info,productname=None, producttype=None, sizename=None, papertype=None, unitprice=None,status=None):
        productObj = Products.objects.create(productname=productname, producttype=producttype,sizename=sizename, papertype=papertype, unitprice=unitprice,status=status)
        return AddProductMutation(details=productObj)

class UpdateProductsMutation(graphene.Mutation):

    class Input:
         id = graphene.ID(required=True)
         productname=graphene.String()
         producttype = graphene.String() 
         sizename = graphene.String() 
         papertype = graphene.String() 
         unitprice =graphene.String()
         status=graphene.Int()

    ok = graphene.Boolean()
    product_owner = graphene.Field(ProductType)

    def mutate(self, info,id=None,productname=None, producttype=None, sizename=None, papertype=None, unitprice=None,status=None):
        id = from_global_id(id)[1]
        trackingObj = Products.objects.filter(id=id).update(productname=productname, producttype=producttype,sizename=sizename, papertype=papertype, unitprice=unitprice,status=status)
        ok = True
        return UpdateProductsMutation(product_owner=Products.objects.get(id=id), ok=ok)
        