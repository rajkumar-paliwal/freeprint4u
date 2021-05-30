import graphene
from graphene_django.filter import DjangoFilterConnectionField
from .types import *
from django.contrib.auth.models import User
import graphql_jwt
from graphql_jwt.decorators import login_required
from .mutations import * 
from .models import *
from django_filters import FilterSet
from feedback.types import FeedbackType

class FeedbackFilter(FilterSet):
    class Meta:
        model = Feedback  
        fields = {"orderno":["exact"]}      

class Query(graphene.ObjectType):
    getOrderFeedbacks = graphene.List(FeedbackType)
    def resolve_getOrderFeedbacks(root, info, **kwargs):
        # Querying a list
        return Feedback.objects.all()

class Mutation(object):
    addFeedback = AddFeedbackMutation.Field()