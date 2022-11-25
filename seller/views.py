from django.shortcuts import render, redirect

# Create your views here.
from buyer.models import buyer_reg
from seller.models import seller_reg, property_upload, upload_proof1, family_details1


def seller_login(request):
    if request.method == "POST":
        uname = request.POST.get('uname')
        pswd = request.POST.get('password')
        try:
            check = seller_reg.objects.get(name=uname, password=pswd)
            request.session['userid'] = check.id
            return redirect('seller_upload')
        except:
            pass
    return render(request, 'seller/seller_login.html')

def seller_register(request):
    if request.method == "POST":
        name = request.POST.get('name')
        email = request.POST.get('email')
        mobile = request.POST.get('mobile')
        uname = request.POST.get('uname')
        password = request.POST.get('password')
        seller_reg.objects.create(name=name, email=email, mobile=mobile, uname=uname, password=password)
    return render(request, 'seller/seller_register.html')

def seller_upload(request):
    uid = request.session['userid']
    print(uid)
    property_price=0
    if request.method == "POST" and request.FILES['image']:
        seller_name = request.POST.get('seller_name')
        seller_phone = request.POST.get('seller_phone')
        seller_email = request.POST.get('seller_email')
        property_size = request.POST.get('property_size')
        address = request.POST.get('address')
        location = request.POST.get('location')
        state = request.POST.get('state')
        country = request.POST.get('country')
        near_school = request.POST.get('near_school')
        near_busstop = request.POST.get('near_busstop')
        near_supermarket = request.POST.get('near_supermarket')
        near_gym = request.POST.get('near_gym')
        image = request.FILES['image']
        property_upload.objects.create(sellerid=uid, seller_name=seller_name, seller_phone=seller_phone,
                                       seller_email=seller_email,property_size=property_size,address=address,
                                       location=location,state=state,country=country,near_school=near_school,
                                       near_busstop=near_busstop,near_supermarket=near_supermarket,near_gym=near_gym,
                                       property_image=image,property_price=property_price)
        return redirect('price_calc')
    return render(request, 'seller/seller_upload.html')

def view_property(request):
    uid = request.session['userid']
    print(uid)
    trans_table = property_upload.objects.all().filter(sellerid=uid)
    return render(request, 'seller/view_property.html',{'obj':trans_table})

def price_calc(request):
    tot_price=0
    price1 = property_upload.objects.all().order_by('-id')[:1]
    for t in price1:
        unid=t.id
        property_size1 = t.property_size
        tot_price = 200 * int(property_size1)
        print(tot_price)
        near_school1=t.near_school
        print(near_school1)
        near_busstop1=t.near_busstop
        print(near_busstop1)
        near_supermarket1=t.near_supermarket
        print(near_supermarket1)
        near_gym1=t.near_gym
        print(near_gym1)
        if near_school1=="yes":
            tot_price=int(tot_price)+5000
        else:
            tot_price=tot_price
        if near_busstop1=="yes":
            tot_price=int(tot_price)+5000
        else:
            tot_price=tot_price
        if near_supermarket1=="yes":
            tot_price = int(tot_price) + 5000
        else:
            tot_price = tot_price
        if near_gym1=="yes":
            tot_price = int(tot_price) + 5000
        else:
            tot_price = tot_price
        print(tot_price)
        property_upload.objects.filter(id=unid).update(property_price=tot_price)
        property1 = property_upload.objects.all().filter(id=unid)

    return render(request, 'seller/price_calc.html',{'property1':property1})

def upload_proof(request):
    uid = request.session['userid']
    print(uid)
    proof1 = property_upload.objects.all().order_by('-id')[:1]
    for t11 in proof1:
        unid1=t11.id

    if request.method == "POST" and request.FILES['aadhar_card'] and request.FILES['pan_card'] and  request.FILES['voter_id'] and  request.FILES['driving_licence']:
        aadhar_card = request.FILES['aadhar_card']
        pan_card = request.FILES['pan_card']
        voter_id = request.FILES['voter_id']
        driving_licence = request.FILES['driving_licence']
        upload_proof1.objects.create(unid1=unid1,sellerid=uid, aadhar_card=aadhar_card, pan_card=pan_card,
                                       voter_id=voter_id,driving_licence=driving_licence)
        return redirect('family_details')
    return render(request, 'seller/upload_proof.html')

def family_details(request):
    uid = request.session['userid']
    print(uid)
    familydet = upload_proof1.objects.all().order_by('-id')[:1]
    for t1 in familydet:
        unid2=t1.id
        uploadid1=t1.unid1

    if request.method == "POST":
        seller_name = request.POST.get('seller_name')
        member_count = request.POST.get('member_count')
        member1 = request.POST.get('member1')
        member2 = request.POST.get('member2')
        member1_phone = request.POST.get('member1_phone')
        member2_phone = request.POST.get('member2_phone')
        relation_name = request.POST.get('relation_name')
        relation_phone = request.POST.get('relation_phone')

        family_details1.objects.create(unid2=unid2,uploadid1=uploadid1,sellerid=uid, seller_name=seller_name, member_count=member_count,
                                       member1=member1,member2=member2,member1_phone=member1_phone,member2_phone=member2_phone,relation_name=relation_name,
                                       relation_phone=relation_phone)
        return redirect('seller_upload')
    return render(request, 'seller/family_details.html')
