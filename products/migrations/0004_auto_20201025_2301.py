# Generated by Django 3.1.1 on 2020-10-25 17:31

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0003_auto_20201025_2232'),
    ]

    operations = [
        migrations.AlterField(
            model_name='products',
            name='sizename',
            field=models.TextField(choices=[('6X4', '6X4'), ('5X5', '5X5'), ('7X5', '7X5'), ('8X6', '8X6')], max_length=100, null=True),
        ),
    ]
