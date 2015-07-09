from django.db import models

# Create your models here.

class article(models.Model):
	title = models.CharField(max_length = 150,)
	content = models.TextField(blank = True)
	snippet = models.CharField(max_length = 50, blank = True)

	publishTime = models.DateTimeField(auto_now = True)