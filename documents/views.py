from .models import Documents
from django.views.decorators.csrf import csrf_exempt
from rest_framework.response import Response
from django.http import HttpResponse, JsonResponse

@csrf_exempt
def SubmitDoc(request):
    docType=request.POST['docType']
    print(docType)
    newdoc = Documents(docfile = request.FILES['docfile'],docType=docType)
    newdoc.save()
    print("Done....................................................")
    documents = Documents.objects.all()
    return JsonResponse({"staus":1,"message":"Upload successfully"},safe=False)