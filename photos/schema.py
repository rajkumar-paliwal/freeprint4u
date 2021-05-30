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
from photos.types import PhotosType

# class PhotosFilter(FilterSet):
#     class Meta:
#         model = Photos
#         fields ='__all__'

# class Query(graphene.ObjectType):
#       print(PhotosType)
#       getUserphoto=DjangoFilterConnectionField(PhotosType,filterset_class=PhotosFilter)



 