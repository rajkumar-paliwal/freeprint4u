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
from products.types import ProductType

class ProductFilter(FilterSet):
    class Meta:
        model = Products
        fields = {"producttype":["exact"]}

class Query(graphene.ObjectType):
      print(ProductType)
      getPoducts=DjangoFilterConnectionField(ProductType,filterset_class=ProductFilter)

class Mutation(object):
    addProduct = AddProductMutation.Field()
    updateProduct = UpdateProductsMutation.Field()

    def resolve_getPoducts(self, args, context, info):
            return Products.objects.all()


 