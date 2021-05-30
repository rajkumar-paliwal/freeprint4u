import graphene
from django.core.exceptions import ObjectDoesNotExist
from django.db import transaction
from graphql_relay import from_global_id
from graphene import relay
from .types import *
import datetime
from django.contrib.auth.models import User
from graphql import GraphQLError
from transactions.types import TransactionsType

class AddTransactionsMutation(relay.ClientIDMutation):
    details = graphene.Field(TransactionsType)

    class Input:
         orderid = graphene.ID()
         paymentmethod = graphene.String() 
         gatewaytransactionid = graphene.String() 
         transactionstatus = graphene.String() 
         transactiondate = graphene.String() 
         lastmodifieddate= graphene.String() 

    @classmethod
    def mutate_and_get_payload(cls, root, info, orderid=None, paymentmethod=None, gatewaytransactionid=None, transactionstatus=None, transactiondate=None, lastmodifieddate=None):
        print("orderid:" , orderid)
        orderObj = Orders.objects.get(id=from_global_id(orderid)[1])
        
        TransObj = Transactions.objects.create(orderid=orderObj, paymentmethod=paymentmethod, gatewaytransactionid=gatewaytransactionid, transactionstatus=transactionstatus, transactiondate=transactiondate, lastmodifieddate=lastmodifieddate)
        return AddTransactionsMutation(details=TransObj)

class UpdateTransactionsMutation(graphene.Mutation):

    class Input:
         id = graphene.ID(required=True)
         orderid = graphene.ID()
         paymentmethod = graphene.String()
         gatewaytransactionid = graphene.String() 
         transactionstatus = graphene.String() 
         transactiondate = graphene.String() 
         lastmodifieddate = graphene.String()
      
    ok = graphene.Boolean()
    transactions_owner = graphene.Field(TransactionsType)

    def mutate(self, info,id=None,orderid=None, paymentmethod=None, gatewaytransactionid=None, transactionstatus=None, transactiondate=None,lastmodifieddate=None):
        id = from_global_id(id)[1]
        trackingObj = Transactions.objects.filter(id=id).update(orderid=orderid, paymentmethod=paymentmethod, gatewaytransactionid=gatewaytransactionid, transactionstatus=transactionstatus, transactiondate=transactiondate, lastmodifieddate=lastmodifieddate)
        ok = True
        return UpdateTransactionsMutation(transactions_owner=Transactions.objects.get(id=id), ok=ok)
