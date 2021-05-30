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
from orders.types import OrdersType

class OrdersFilter(FilterSet):
    class Meta:
        model = Orders
        fields = {"userid":["exact"],"orderstatus":["exact"]}

class Query(graphene.ObjectType):
      getUserOrders=DjangoFilterConnectionField(OrdersType,filterset_class=OrdersFilter)

class Mutation(object):
    addOrders = AddOrdersMutation.Field()
    updateOrders = UpdateOrdersMutation.Field()

    def resolve_getUserOrders(self, args, context, info):
            return Orders.objects.all()
