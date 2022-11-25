from django.db.models import Sum
from django.shortcuts import render, redirect
from django.db.models import Count
# Create your views here.
from buyer.models import buyer_reg, payment1
from seller.models import property_upload
from django.db.models import Q

def buyer_index(request):

    return render(request, 'buyer/buyer_index.html')

def buyer_login(request):
    if request.method == "POST":
        uname = request.POST.get('uname')
        pswd = request.POST.get('password')
        try:
            check = buyer_reg.objects.get(uname=uname, password=pswd)
            request.session['buyerid'] = check.id
            request.session['bname'] = check.name
            return redirect('buyerhome')
        except:
            pass
    return render(request, 'buyer/buyer_login.html')

def buyer_register(request):
    if request.method == "POST":
        name = request.POST.get('name')
        email = request.POST.get('email')
        mobile = request.POST.get('mobile')
        uname = request.POST.get('uname')
        password = request.POST.get('password')
        buyer_reg.objects.create(name=name, email=email, mobile=mobile, uname=uname, password=password)
    return render(request, 'buyer/buyer_register.html')

def buyerhome(request):
    searchoption1=''
    if request.method == "POST":
        searchoption1=request.POST.get('searchoption')
        if searchoption1=="location":
            return redirect('location')
        elif searchoption1=="price":
            return redirect('price')
        elif searchoption1=="popularity":
            return redirect('popularity')
        elif searchoption1=="locationandprice":
            return redirect('locationandprice')
        elif searchoption1=="locationandpopularity":
            return redirect('locationandpopularity')
        elif searchoption1=="priceandpopularity":
            return redirect('priceandpopularity')
        else:
            return redirect('locandpriceandpopularity')
    return render(request, 'buyer/buyerhome.html')

def location(request):
    pview=''
    objectlist1 = property_upload.objects.all().values('location').annotate(total=Count('location')).order_by()
    if request.method == "POST":
        location1=request.POST.get('location')
        pview = property_upload.objects.all().filter(location=location1)
    return render(request,'buyer/location.html',{'objectlist1':objectlist1,'pview':pview})

def price(request):
    pview1 = ''
    objectlist11 = property_upload.objects.all().values('property_price').annotate(total=Count('property_price')).order_by()
    if request.method == "POST":
        property_price1 = request.POST.get('property_price')
        pview1 = property_upload.objects.all().filter(property_price=property_price1)
    return render(request, 'buyer/price.html', {'objectlist11': objectlist11, 'pview1': pview1})


def popularity(request):
    pview2=''
    if request.method == "POST":
        near_school1 = request.POST.get('near_school')
        print(near_school1)
        near_busstop1 = request.POST.get('near_busstop')
        print(near_busstop1)
        near_supermarket1 = request.POST.get('near_supermarket')
        print(near_supermarket1)
        near_gym1 = request.POST.get('near_gym')
        print(near_gym1)

        pview2 = property_upload.objects.all().filter(Q(near_school=near_school1)|Q(near_busstop=near_busstop1)|Q(near_supermarket=near_supermarket1)|Q(near_gym=near_gym1))

    return render(request, 'buyer/popularity.html',{'pview2': pview2})

def locationandprice(request):
    pview3 = ''
    objectlist12 = property_upload.objects.all().values('location').annotate(total=Count('location')).order_by()
    objectlist22 = property_upload.objects.all().values('property_price').annotate(total=Count('property_price')).order_by()
    if request.method == "POST":
        location1 = request.POST.get('location')
        print(location1)
        pprice1 = request.POST.get('pprice')
        print(pprice1)
        pview3 = property_upload.objects.all().filter(location=location1,property_price=pprice1)
    return render(request, 'buyer/locationandprice.html', {'objectlist12': objectlist12,'objectlist22':objectlist22,'pview3': pview3})


def locationandpopularity(request):
    pview4 = ''
    objec1 = property_upload.objects.all().values('location').annotate(total=Count('location')).order_by()

    if request.method == "POST":
        loca1 = request.POST.get('location')
        print(loca1)

        nschool = request.POST.get('near_school')
        print(nschool)
        nbusstop = request.POST.get('near_busstop')
        print(nbusstop)
        nsupermarket = request.POST.get('near_supermarket')
        print(nsupermarket)
        ngym = request.POST.get('near_gym')
        print(ngym)

        pview4 = property_upload.objects.all().filter(Q(near_school=nschool) | Q(near_busstop=nbusstop) | Q(near_supermarket=nsupermarket) | Q(near_gym=ngym),location=loca1)
    return render(request, 'buyer/locationandpopularity.html',{'objec1': objec1, 'pview4': pview4})



def priceandpopularity(request):
    pview5 = ''
    objec2 = property_upload.objects.all().values('property_price').annotate(total=Count('property_price')).order_by()

    if request.method == "POST":
        prprice1 = request.POST.get('prprice')
        print(prprice1)

        nschool = request.POST.get('near_school')
        print(nschool)
        nbusstop = request.POST.get('near_busstop')
        print(nbusstop)
        nsupermarket = request.POST.get('near_supermarket')
        print(nsupermarket)
        ngym = request.POST.get('near_gym')
        print(ngym)

        pview5 = property_upload.objects.all().filter(Q(near_school=nschool) | Q(near_busstop=nbusstop) | Q(near_supermarket=nsupermarket) | Q(near_gym=ngym),property_price=prprice1)
    return render(request, 'buyer/priceandpopularity.html', {'objec2': objec2, 'pview5': pview5})



def locandpriceandpopularity(request):
    pview6 = ''
    objec3 = property_upload.objects.all().values('location').annotate(total=Count('location')).order_by()
    objec4 = property_upload.objects.all().values('property_price').annotate(total=Count('property_price')).order_by()

    if request.method == "POST":
        plocation1 = request.POST.get('plocation')
        prprice3 = request.POST.get('prprice2')
        print(prprice3)

        nschool = request.POST.get('near_school')
        print(nschool)
        nbusstop = request.POST.get('near_busstop')
        print(nbusstop)
        nsupermarket = request.POST.get('near_supermarket')
        print(nsupermarket)
        ngym = request.POST.get('near_gym')
        print(ngym)

        pview6 = property_upload.objects.all().filter(
            Q(near_school=nschool) | Q(near_busstop=nbusstop) | Q(near_supermarket=nsupermarket) | Q(near_gym=ngym),location=plocation1,
            property_price=prprice3)
    return render(request, 'buyer/locandpriceandpopularity.html', {'objec3': objec3,'objec4': objec4, 'pview6': pview6})

def payment(request,pk):
    buyerid1 = request.session['buyerid']
    bname1 = request.session['bname']
    objs1 = property_upload.objects.get(id=pk)
    pr_id = objs1.id
    sellerid11 = objs1.sellerid
    seller_name = objs1.seller_name
    print(seller_name)
    property_size = objs1.property_size
    print(property_size)
    property_price = objs1.property_price
    print(property_price)
    request.session['propertyid'] = pr_id
    if request.method == "POST":
        card_number = request.POST.get('card_number')
        validity = request.POST.get('validity')
        cvv = request.POST.get('cvv')
        holder_name = request.POST.get('holder_name')
        payment1.objects.create(sellerid=sellerid11, sellername=seller_name,buyerid=buyerid1, buyername=bname1, pro_id=pr_id,
                                 pr_size=property_size,pr_price=property_price,card_number=card_number,validity=validity,cvv=cvv,
                                 holder_name=holder_name)
        return redirect('Property_finalreg')
    return render(request, 'buyer/payment.html', {'seller_name': seller_name,'property_size': property_size,'property_price':property_price,'bname1': bname1})

def Property_finalreg(request):
    buyerid1 = request.session['buyerid']
    bname1 = request.session['bname']
    propertyid = request.session['propertyid']
    pr_regview = property_upload.objects.all().filter(id=propertyid)
    return render(request, 'buyer/Property_finalreg.html', {'pr_regview': pr_regview})

def home_loan(request):

    return render(request, 'buyer/home_loan.html')





