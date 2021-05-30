"""freeprint4u URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from django.conf.urls import url
from graphene_django.views import GraphQLView
from django.views.decorators.csrf import csrf_exempt
from graphene_file_upload.django import FileUploadGraphQLView
from django.conf import settings
from django.conf.urls.static import static
from . import views

urlpatterns = [
    path('index/', views.homepage), 
    path('cContactus/', 	views.constomerQuery), 
	path('cQueryAns/', 		views.cQueryAns), 
	path('listusers/', 	views.listcustomers), 	
	path('add-user/', 	views.addcustomer), 

	path('daily-orders/', 	views.dailyOrders),
	path('print-orders/', 	views.printOrders), 
	path('delivery-orders/', views.deliveryOrders),
	path('history-orders/', views.historyOrders), 
	path('undecided-orders/', views.undecidedOrders),
	path('refund-orders/', views.refundOrders),  
	path('add-order/', 		views.addOrder), 

	path('view-transaction/', 	views.viewTransaction), 
	path('trans-expense/', 		views.addtransExpense), 
	path('trans-refund/', 		views.addtransRefund), 
	path('balance-daily/', 		views.viewBalanceDaily), 
	path('balance-monthly/', 	views.viewBalanceMonthly), 
	path('new-deposit/', 		views.addDeposit), 

	path('email-template/', 	views.viewEmailTemplates), 
	path('user-data/', 		views.viewUserData), 	

	path('running-task/', 	views.runningTask), 
	path('history-task/', 	views.historyTask),  

	path('list-products/', 	views.viewProductList),   
	path('add-product' , 	views.addProduct), 
]
