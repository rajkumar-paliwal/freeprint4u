# Generated by Django 3.1.1 on 2020-10-10 13:26

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('orders', '0003_auto_20201010_1426'),
        ('transactions', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='transactions',
            name='transactionid',
        ),
        migrations.AlterField(
            model_name='transactions',
            name='orderid',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='orders.orders'),
        ),
    ]
