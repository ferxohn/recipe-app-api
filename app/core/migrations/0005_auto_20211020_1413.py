# Generated by Django 2.1.15 on 2021-10-20 14:13

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0004_recipe'),
    ]

    operations = [
        migrations.RenameField(
            model_name='recipe',
            old_name='tag',
            new_name='tags',
        ),
    ]