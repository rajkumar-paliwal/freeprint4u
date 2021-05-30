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
from address.types import AddressType
from address.models import Address
from products.models import Products

class AddOrdersMutation(relay.ClientIDMutation):
    details = graphene.Field(OrdersType)

    class Input:
        userid = graphene.ID()
        addressid = graphene.ID()   
        productid = graphene.ID()    
        invoice = graphene.String()
        orderstatus = graphene.String()   
        instructions  = graphene.String()


    @classmethod
    def mutate_and_get_payload(cls, root, info,userid=None, addressid=None, productid=None, invoice=None, orderstatus=None,instructions=None):
        userObj = User.objects.get(id=from_global_id(userid)[1])
        addressObj=Address.objects.get(id=from_global_id(addressid)[1])
        # productsObj=Products.objects.get(id=from_global_id(productid)[1])
        trackingObj = Orders.objects.create(userid=userObj, addressid=addressObj, productid=productid, invoice=invoice,orderstatus=orderstatus,instructions=instructions)
        return AddOrdersMutation(details=trackingObj)

class UpdateOrdersMutation(graphene.Mutation):

    class Input:
        id = graphene.ID(required=True)
        userid = graphene.ID()
        addressid = graphene.ID()   
        productid = graphene.ID()    
        invoice = graphene.String()
        orderstatus = graphene.String()   
        instructions  = graphene.String()

    ok = graphene.Boolean()
    orders_owner = graphene.Field(OrdersType)

    def mutate(self, info,id=None,userid=None, addressid=None, productid=None, invoice=None, orderstatus=None,instructions=None):
        id = from_global_id(id)[1]
        userObj = User.objects.get(id=from_global_id(userid)[1])
        addressObj=Address.objects.get(id=from_global_id(addressid)[1])
        # productsObj=Products.objects.get(id=from_global_id(productid)[1])
        trackingObj = Orders.objects.filter(id=id).update(userid=userObj, addressid=addressObj, productid=productid, invoice=invoice,orderstatus=orderstatus,instructions=instructions)
        ok = True
        return UpdateOrdersMutation(orders_owner=Orders.objects.get(id=id), ok=ok)

        