# Generated by Django 4.2.2 on 2023-08-11 13:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('club', '0014_sponsor'),
    ]

    operations = [
        migrations.AddField(
            model_name='event',
            name='description',
            field=models.TextField(null=True),
        ),
    ]
