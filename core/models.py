from django.db import models

# Create your models here.
class Contactus(models.Model):
    name = models.TextField()
    email = models.EmailField(null=True)
    subject = models.TextField(null=True)
    message = models.TextField(null=True)
    created_at = models.DateTimeField(null=True)
    updated_at = models.DateTimeField(null=True)    
    class Meta:
        db_table ="contact_us"

class Newsletter(models.Model):
    TYPE_CHOICES = (
        ('0', '0'),
        ('1','1')
        )
    email = models.EmailField(null=True)
    is_subscribed = models.CharField(max_length=5,choices=TYPE_CHOICES,default='0')
    created_at = models.DateTimeField(null=True)
    updated_at = models.DateTimeField(null=True)    
    class Meta:
        db_table ="newsletter"        

class Gallery(models.Model):
    TYPE_CHOICES = (
        ('Sofa and Bed', 'Sofa and Bed'),
        ('Modular Kitchen','Modular Kitchen'),
        ('Table and Chairs','Table and Chairs'),
        ('Cupboard','Cupboard')        
        )
    type = models.CharField(max_length=255,choices=TYPE_CHOICES,default='Sofa and Bed')
    image_name = models.TextField(null=True)
    title = models.CharField(max_length=255,null=True)
    status = models.SmallIntegerField(null=True,default=1)
    created_at = models.DateTimeField(null=True, blank=True)
    updated_at = models.DateTimeField(null=True, blank=True)
    class Meta:
        db_table = "gallery"

class Testimonial(models.Model):
    name = models.CharField(max_length=255,null=True)
    profile_image = models.CharField(max_length=255,null=True)
    designation = models.CharField(max_length=255,null=True)
    rating = models.SmallIntegerField(default=4)
    description = models.TextField(blank=True,null=True)
    status = models.BooleanField(default=True,db_comment='0:Inactive, 1:Active')
    created_at = models.DateTimeField(null=True, blank=True)
    updated_at = models.DateTimeField(null=True, blank=True)
    class Meta:
        db_table = "testimonial"        