from django.db import models

# Create your models here.
class buyer_reg(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=300)
    email = models.CharField(max_length=200)
    mobile = models.BigIntegerField()
    uname = models.CharField(max_length=300)
    password = models.CharField(max_length=200)

class payment1(models.Model):
    id = models.AutoField(primary_key=True)
    sellerid = models.CharField(max_length=300)
    sellername = models.CharField(max_length=200)
    buyerid = models.CharField(max_length=200)
    buyername = models.CharField(max_length=300)
    pro_id = models.CharField(max_length=200)
    pr_size = models.CharField(max_length=200)
    pr_price = models.CharField(max_length=200)
    card_number = models.CharField(max_length=200)
    validity = models.CharField(max_length=200)
    cvv = models.CharField(max_length=200)
    holder_name = models.CharField(max_length=200)
