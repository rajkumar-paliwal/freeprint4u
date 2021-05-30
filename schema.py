#!/usr/bin/env python
import graphene
from graphene_django.debug import DjangoDebug
import users.schema
import address.schema
import delivery.schema
import orders.schema
import contactus.schema
import feedback.schema
import products.schema
import cart.schema
import transactions.schema

class Query(users.schema.Query, address.schema.Query, contactus.schema.Query, feedback.schema.Query, delivery.schema.Query, orders.schema.Query,products.schema.Query, cart.schema.Query, transactions.schema.Query,graphene.ObjectType):
    debug = graphene.Field(DjangoDebug, name="_debug")

class Mutation(users.schema.Mutation, address.schema.Mutation, contactus.schema.Mutation, feedback.schema.Mutation, delivery.schema.Mutation, orders.schema.Mutation,products.schema.Mutation, cart.schema.Mutation, transactions.schema.Mutation, graphene.ObjectType):
    debug = graphene.Field(DjangoDebug, name="_debug")

schema = graphene.Schema(query=Query, mutation=Mutation)