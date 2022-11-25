# Generated by Django 2.0.5 on 2020-11-26 10:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('seller', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='property_upload',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('sellerid', models.CharField(max_length=300)),
                ('seller_name', models.CharField(max_length=300)),
                ('seller_phone', models.BigIntegerField()),
                ('seller_email', models.CharField(max_length=200)),
                ('property_size', models.CharField(max_length=300)),
                ('address', models.CharField(max_length=200)),
                ('location', models.CharField(max_length=200)),
                ('state', models.CharField(max_length=200)),
                ('country', models.CharField(max_length=200)),
                ('near_school', models.CharField(max_length=200)),
                ('near_busstop', models.CharField(max_length=200)),
                ('near_supermarket', models.CharField(max_length=200)),
                ('near_gym', models.CharField(max_length=200)),
                ('property_price', models.BigIntegerField()),
                ('property_image', models.CharField(max_length=200)),
            ],
        ),
    ]
