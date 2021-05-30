# Generated by Django 3.1.1 on 2020-10-31 18:59

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('cart', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='cartitem',
            old_name='Documentid',
            new_name='documentid',
        ),
        migrations.AlterField(
            model_name='cart',
            name='userid',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
    ]