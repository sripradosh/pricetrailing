# Generated by Django 2.0.5 on 2020-11-20 10:14

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='buyer_register',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=300)),
                ('email', models.CharField(max_length=200)),
                ('mobile', models.BigIntegerField()),
                ('uname', models.CharField(max_length=300)),
                ('password', models.CharField(max_length=200)),
            ],
        ),
    ]
