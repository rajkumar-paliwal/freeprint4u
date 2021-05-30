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

class AddFeedbackMutation(relay.ClientIDMutation):
    details = graphene.Field(FeedbackType)

    class Input:       
        orderno = graphene.String(required=True)
        rating = graphene.String(required=True)
        feedback = graphene.String()      

    @classmethod
    def mutate_and_get_payload(cls, root, info, orderno=None, rating=None, feedback=None ):
        feedbackObj = Feedback.objects.create(orderno=orderno, rating=rating, feedback=feedback)
        return AddFeedbackMutation(details=feedbackObj)