# Generated by Django 4.2.2 on 2023-08-11 14:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('club', '0021_remove_event_room_room'),
    ]

    operations = [
        migrations.AddField(
            model_name='room',
            name='end_date',
            field=models.DateField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='room',
            name='start_date',
            field=models.DateField(blank=True, null=True),
        ),
    ]