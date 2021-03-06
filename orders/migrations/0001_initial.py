# Generated by Django 3.1.1 on 2020-10-04 18:41

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Orders',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('orderid', models.CharField(max_length=100)),
                ('customerid', models.CharField(max_length=100)),
                ('addressid', models.TextField(max_length=100)),
                ('productid', models.TextField(max_length=100)),
                ('orderdate', models.DateTimeField(auto_now_add=True)),
                ('invoice', models.TextField(max_length=100)),
                ('discountid', models.TextField(max_length=100)),
                ('orderstatus', models.TextField(max_length=100)),
                ('instructions', models.TextField(max_length=150)),
                ('lastmodifieddate', models.DateTimeField(auto_now_add=True)),
            ],
        ),
    ]
