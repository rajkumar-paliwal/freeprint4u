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

class AddDeliveryMutation(relay.ClientIDMutation):
    details = graphene.Field(DeliveryType)

    class Input:
         orderid=graphene.ID()
         trackingid = graphene.String(required=True) 
         userid = graphene.ID(required=True) 
         courierservice = graphene.String(required=True) 
         status =graphene.String(required=True) 


    @classmethod
    def mutate_and_get_payload(cls, root, info,orderid=None, trackingid=None, userid=None, courierservice=None, status=None):
        userObj = User.objects.get(id=from_global_id(userid)[1])
        print(userObj)
        trackingObj = Delivery.objects.create(userid=userObj, trackingid=trackingid, courierservice=courierservice, status=status)
        return AddDeliveryMutation(details=trackingObj)

class UpdateDeliveryMutation(graphene.Mutation):

    class Input:
        id = graphene.ID(required=True)
        orderid=graphene.ID()
        trackingid = graphene.String() 
        userid = graphene.ID() 
        courierservice = graphene.String() 
        status =graphene.String() 

    ok = graphene.Boolean()
    delivery_owner = graphene.Field(DeliveryType)

    def mutate(self, info,id=None,orderid=None, trackingid=None, userid=None, courierservice=None, status=None):
        id = from_global_id(id)[1]
        userObj = User.objects.get(id=from_global_id(userid)[1])
        trackingObj = Delivery.objects.filter(id=id).update(userid=userObj, trackingid=trackingid, courierservice=courierservice, status=status)
        # delivery_owner = DeliveryType(trackingObj)
        ok = True
        return UpdateDeliveryMutation(delivery_owner=Delivery.objects.get(id=id), ok=ok)

        