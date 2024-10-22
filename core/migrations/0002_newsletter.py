# Generated by Django 4.2 on 2024-09-16 11:19

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Newsletter',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('email', models.EmailField(max_length=254, null=True)),
                ('is_subscribed', models.CharField(choices=[('0', '0'), ('1', '1')], default='0', max_length=5, null=True)),
                ('created_at', models.DateTimeField(null=True)),
                ('updated_at', models.DateTimeField(null=True)),
            ],
            options={
                'db_table': 'newsletter',
            },
        ),
    ]
