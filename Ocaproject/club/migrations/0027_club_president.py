# Generated by Django 4.2.2 on 2023-08-19 15:41

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('user', '0008_delete_clubpresident_alter_user_role'),
        ('club', '0026_alter_transaction_transaction'),
    ]

    operations = [
        migrations.AddField(
            model_name='club',
            name='president',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='president_of', to='user.student'),
        ),
    ]