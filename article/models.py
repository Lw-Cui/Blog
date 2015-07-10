from django.db import models
from django.core.urlresolvers import reverse
from django.shortcuts import redirect
from django.shortcuts import render_to_response

# Create your models here.

class article(models.Model):
	title = models.CharField(max_length = 150,)
	content = models.TextField(blank = True)
	snippet = models.CharField(max_length = 50, blank = True)
	publishTime = models.DateTimeField(auto_now = True)

	def geturl(self):
		return reverse('article.views.content', args=(self.id,))