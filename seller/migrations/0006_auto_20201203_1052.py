# Generated by Django 2.0.5 on 2020-12-03 05:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('seller', '0005_auto_20201202_1923'),
    ]

    operations = [
        migrations.AlterField(
            model_name='upload_proof1',
            name='aadhar_card',
            field=models.FileField(upload_to=''),
        ),
        migrations.AlterField(
            model_name='upload_proof1',
            name='driving_licence',
            field=models.FileField(upload_to=''),
        ),
        migrations.AlterField(
            model_name='upload_proof1',
            name='pan_card',
            field=models.FileField(upload_to=''),
        ),
        migrations.AlterField(
            model_name='upload_proof1',
            name='voter_id',
            field=models.FileField(upload_to=''),
        ),
    ]