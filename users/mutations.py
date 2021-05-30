import graphene
from django.core.exceptions import ObjectDoesNotExist
from django.db import transaction
from graphql_relay import from_global_id
from graphene import relay
from .types import *
import datetime
from django.contrib.auth.models import User
from graphql import GraphQLError

class SignUpMutation(relay.ClientIDMutation):
    details = graphene.Field(UserType)

    class Input:
        name = graphene.String(required=True)
        email = graphene.String(required=True)
        password = graphene.String(required=True)

    @classmethod
    def mutate_and_get_payload(cls, root, info, name=None, email=None, password=None):
        obj = None
        if User.objects.filter(username=email).exists():
            return GraphQLError('User with this email already exists!')
        else:
            obj = User.objects.create(first_name=name, username=email, email=email, password=password)
        return SignUpMutation(details=obj)