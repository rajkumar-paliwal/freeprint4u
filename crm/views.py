from django.shortcuts import render
from django.http import HttpResponse
import datetime
from orders.models import Orders
from transactions.models import Transactions

buttonKeyValue = { 'sendForPrint': "Send for Print", 'StartPrintTask': "Start Print Task", 'ReadyForDelivery': "Send for Delivery",  'Delivered': "Mark Delivered" , 'Undecided': "Undecided", 'Delete': "Delete" }
orderStausPage = "New"
actionPage = "/crm/daily-orders/"

def homepage(request):
    return render(request,'index.html')
def addcustomer(request):
    return render(request,'add-customer.html')
def listcustomers(request):
    return render(request,'clist.html')
def constomerQuery(request):
    return render(request,'clist.html')
def cQueryAns(request):
    return render(request,'clist.html')

def dailyOrders(request):
    order = Orders.objects.filter(orderstatus="New")
    orderStausPage = "New" 
    actionPage = "/crm/print-orders/"
    return render(request,'orders.html',{"orders":order, "buttonKeyValue":buttonKeyValue ,"orderStausPage" : orderStausPage ,"actionPage":actionPage })
def printOrders(request):
    selected_values = request.POST.getlist('New')
    for orderid in selected_values:
        UpdatedOrder = Orders.objects.get(id=orderid)
        UpdatedOrder.orderstatus="ReadyForPrint"
        UpdatedOrder.save()
    order = Orders.objects.filter(orderstatus="ReadyForPrint")  
    orderStausPage = "For Print"    
    actionPage = "/crm/delivery-orders/"
    return render(request,'orders.html',{"orders":order, "buttonKeyValue":buttonKeyValue, "orderStausPage" : orderStausPage ,"actionPage":actionPage } )

def deliveryOrders(request):
    selected_values = request.POST.getlist('ReadyForPrint')
    for orderid in selected_values:
        UpdatedOrder = Orders.objects.get(id=orderid)
        UpdatedOrder.orderstatus="ReadyForDelivery"
        UpdatedOrder.save()
    order = Orders.objects.filter(orderstatus="ReadyForDelivery")
    orderStausPage = "For Delivery"
    actionPage = "/crm/history-orders/"
    return render(request,'orders.html',{"orders":order , "buttonKeyValue":buttonKeyValue ,"orderStausPage" : orderStausPage ,"actionPage":actionPage } )

def historyOrders(request):
    selected_values = request.POST.getlist('ReadyForDelivery')
    print(selected_values)
    if(selected_values):
        for orderid in selected_values:
            UpdatedOrder = Orders.objects.get(id=orderid)
            UpdatedOrder.orderstatus="Delivered"
            UpdatedOrder.save()     
    selected_values = request.POST.getlist('Undecided')
    if(selected_values):
        for orderid in selected_values:
            UpdatedOrder = Orders.objects.get(id=orderid)
            UpdatedOrder.orderstatus="Deleted"
            UpdatedOrder.save()
            
    selected_values = request.POST.getlist('ReadyforRefund')
    if(selected_values):
        for orderid in selected_values:
            UpdatedOrder = Orders.objects.get(id=orderid)
            UpdatedOrder.orderstatus="Refunded"
            UpdatedOrder.save()        

    order = Orders.objects.filter(orderstatus="Delivered") | Orders.objects.filter(orderstatus="Deleted") | Orders.objects.filter(orderstatus="Refunded") 
    orderStausPage = "History"
    actionPage = "/crm/history-orders/"
    return render(request,'orders.html',{"orders":order , "buttonKeyValue":buttonKeyValue ,"orderStausPage" : orderStausPage ,"actionPage":actionPage } )
 
def undecidedOrders(request):
    selected_values = request.POST.getlist('New')
    for orderid in selected_values:
        UpdatedOrder = Orders.objects.get(id=orderid)
        UpdatedOrder.orderstatus="Undecided"
        UpdatedOrder.save()
    order = Orders.objects.filter(orderstatus="Undecided")
    orderStausPage = "Undecided"
    actionPage = "/crm/history-orders/"
    return render(request,'orders.html',{"orders":order , "buttonKeyValue":buttonKeyValue ,"orderStausPage" : orderStausPage ,"actionPage":actionPage } )

def refundOrders(request):
    selected_values = request.POST.getlist('New')
    for orderid in selected_values:
        UpdatedOrder = Orders.objects.get(id=orderid)
        UpdatedOrder.orderstatus="ReadyforRefund"
        UpdatedOrder.save()
    order = Orders.objects.filter(orderstatus="ReadyforRefund")
    orderStausPage = "Refund"
    actionPage = "/crm/history-orders/"
    return render(request,'orders.html',{"orders":order , "buttonKeyValue":buttonKeyValue ,"orderStausPage" : orderStausPage ,"actionPage":actionPage } )

def addOrder(request):
    return render(request,'ninvoices.html')

def viewTransaction(request):
    transactions = Transactions.objects.filter(transactionstatus="Created")
    return render(request,'view-tsaction.html',{"transactions":transactions })

def addtransExpense(request):
    return render(request,'expense.html')
def addtransRefund(request):
    return render(request,'expense.html')
def viewBalanceDaily(request):
    return render(request,'balance.html')    
def viewBalanceMonthly(request):
    return render(request,'balance.html') 
def addDeposit(request):
    return render(request,'deposit.html')    

def viewEmailTemplates(request):
    return render(request,'astock.html')
def viewUserData(request):
    return render(request,'astock.html')    

def runningTask(request):
    selected_values = request.POST.getlist('ReadyForPrint')
    for orderid in selected_values:
        UpdatedOrder = Orders.objects.get(id=orderid)
        UpdatedOrder.orderstatus="PrintWIP"
        UpdatedOrder.save()


    order = Orders.objects.filter(orderstatus="PrintWIP")
    orderStausPage = "Refund"
    actionPage = "/crm/history-orders/"


    return render(request,'rtask.html')    
def historyTask(request):
    return render(request,'atask.html')   

def viewProductList(request):
    return render(request,'atask.html')   

def addProduct(request):
    return render(request,'add-customer.html') 