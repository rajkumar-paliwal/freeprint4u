# Generated by Django 3.1.1 on 2020-10-25 12:00

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('contactus', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='contactus',
            name='description',
            field=models.TextField(max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='contactus',
            name='email',
            field=models.TextField(max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='contactus',
            name='enquiryabout',
            field=models.TextField(max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='contactus',
            name='fullname',
            field=models.TextField(max_length=100, null=True),
        ),
    ]
