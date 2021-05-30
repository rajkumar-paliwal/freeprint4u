from django.contrib.auth.models import User, Group
from graphene_django.types import DjangoObjectType
from graphene import relay
from .models import *

class FeedbackType(DjangoObjectType):    
    class Meta:
        model = Feedback
        filter_fields ='__all__'
        interfaces = (relay.Node,)