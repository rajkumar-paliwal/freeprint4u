from .models import Photos
from django.views.decorators.csrf import csrf_exempt
from rest_framework.response import Response
from django.http import HttpResponse, JsonResponse
import base64
from cart.models import Cart,CartItem
from products.models import Products

@csrf_exempt
def SubmitPhoto(request):
    PhotoType=request.POST['imagetype']
    print(PhotoType)
    cartInstance = Cart(status=True)
    cartInstance.save()
    for productid in request.POST['productlist'].split(","):
        productInstance = Products.objects.get(id=productid)
        CartItemInstance = CartItem(cartid=cartInstance,productid=productInstance)
        CartItemInstance.save()
        for file in request.FILES.getlist('photofile_'+str(productid)):
            newphoto = Photos(photofile = file,imageType=PhotoType)
            newphoto.save()
            CartItemInstance.photoid.add(newphoto)
    documents = Photos.objects.all()
    message = "CartType:"+str(cartInstance.id)
    message_bytes = message.encode('ascii')
    base64_bytes = base64.b64encode(message_bytes)
    base64_message = base64_bytes.decode('ascii')
    return JsonResponse({"staus":1,"cartid":base64_message,"message":"Upload successfully"},safe=False)