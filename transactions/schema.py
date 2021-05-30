import graphene
from graphene import relay,ObjectType
from graphene_django.filter import DjangoFilterConnectionField
from .types import *
from django.contrib.auth.models import User
import graphql_jwt
from graphql_jwt.decorators import login_required
from .mutations import * 
from .models import *
from django_filters import FilterSet
from users.types import UserType
from transactions.types import TransactionsType

class TransactionsFilter(FilterSet):
    class Meta:
        model = Transactions
        fields = {"orderid":["exact"]}

class Query(graphene.ObjectType):
      print(TransactionsType)
      getTransactions=DjangoFilterConnectionField(TransactionsType, filterset_class=TransactionsFilter)

class Mutation(object):
    addTransactions = AddTransactionsMutation.Field()
    updateTransactions = UpdateTransactionsMutation.Field()

    def resolve_getTransactions(self, args, context, info):
            return Transactions.objects.all()
            