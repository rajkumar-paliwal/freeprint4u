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
from delivery.types import DeliveryType

class DeliveryFilter(FilterSet):
    class Meta:
        model = Delivery
        fields = {"userid":["exact"]}

class Query(graphene.ObjectType):
      print(DeliveryType)
      getUserDelivery=DjangoFilterConnectionField(DeliveryType,filterset_class=DeliveryFilter)

class Mutation(object):
    addDelivery = AddDeliveryMutation.Field()
    updateDelivery = UpdateDeliveryMutation.Field()

    def resolve_getUserDelivery(self, args, context, info):
            return Delivery.objects.all()


 