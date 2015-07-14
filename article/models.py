from django.db import models
from django.core.urlresolvers import reverse
from django.shortcuts import redirect
from django.shortcuts import render_to_response

class tag(models.Model):
	title = models.CharField(max_length=50, unique = True)

	def __unicode__(self):
		return unicode(self.title)

	def geturl(self):
		return reverse('article.views.tagIndex', args = (self.id, 1))

class article(models.Model):
	title = models.CharField(max_length = 150, unique = True)
	content = models.TextField(blank = True)
	publishTime = models.DateTimeField(auto_now = True)
	tags = models.ManyToManyField(tag)

	def geturl(self):
		return reverse('article.views.content', args = (self.id,))

	def __unicode__(self):
		return unicode(self.title)

	class Meta:
		ordering = ['-publishTime']

