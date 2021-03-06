# Generated by Django 3.1.1 on 2020-10-25 12:00

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='discount',
            name='details',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='discount',
            name='discountlimit',
            field=models.IntegerField(null=True),
        ),
        migrations.AlterField(
            model_name='discount',
            name='name',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='discount',
            name='percentage',
            field=models.IntegerField(null=True),
        ),
        migrations.AlterField(
            model_name='price',
            name='papertype',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='price',
            name='unitprice',
            field=models.FloatField(null=True),
        ),
        migrations.AlterField(
            model_name='products',
            name='details',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='products',
            name='discountid',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='products.discount'),
        ),
        migrations.AlterField(
            model_name='products',
            name='name',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='products',
            name='priceid',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='products.price'),
        ),
    ]
