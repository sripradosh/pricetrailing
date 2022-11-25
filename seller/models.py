from django.db import models

# Create your models here.
class seller_reg(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=300)
    email = models.CharField(max_length=200)
    mobile = models.BigIntegerField()
    uname = models.CharField(max_length=300)
    password = models.CharField(max_length=200)

class property_upload(models.Model):
    id = models.AutoField(primary_key=True)
    sellerid=models.CharField(max_length=300)
    seller_name = models.CharField(max_length=300)
    seller_phone = models.BigIntegerField()
    seller_email = models.CharField(max_length=200)
    property_size = models.CharField(max_length=300)
    address = models.CharField(max_length=200)
    location = models.CharField(max_length=200)
    state = models.CharField(max_length=200)
    country = models.CharField(max_length=200)
    near_school = models.CharField(max_length=200)
    near_busstop = models.CharField(max_length=200)
    near_supermarket = models.CharField(max_length=200)
    near_gym = models.CharField(max_length=200)
    property_price =models.BigIntegerField()
    property_image = models.FileField()

class upload_proof1(models.Model):
    id = models.AutoField(primary_key=True)
    unid1 = models.CharField(max_length=300)
    sellerid=models.CharField(max_length=300)
    aadhar_card = models.FileField()
    pan_card = models.FileField()
    voter_id = models.FileField()
    driving_licence = models.FileField()

class family_details1(models.Model):
    id = models.AutoField(primary_key=True)
    unid2 = models.CharField(max_length=300)
    uploadid1 = models.CharField(max_length=300)
    sellerid = models.CharField(max_length=300)
    seller_name=models.CharField(max_length=300)
    member_count = models.CharField(max_length=300)
    member1 = models.CharField(max_length=300)
    member2 = models.CharField(max_length=200)
    member1_phone = models.CharField(max_length=300)
    member2_phone = models.CharField(max_length=300)
    relation_name = models.CharField(max_length=300)
    relation_phone = models.CharField(max_length=300)
