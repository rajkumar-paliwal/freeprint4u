from django.contrib.auth.models import User, Group
from graphene_django.types import DjangoObjectType
from graphene import relay

class UserType(DjangoObjectType):    
    class Meta:
        model = User
        filter_fields ='__all__'
        interfaces = (relay.Node,)