# Generated by Django 4.2.3 on 2023-07-30 15:17

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('club', '0008_remove_clubinfo_achieved_date_remove_clubinfo_title'),
    ]

    operations = [
        migrations.AddField(
            model_name='achievement',
            name='description',
            field=models.TextField(null=True),
        ),
    ]