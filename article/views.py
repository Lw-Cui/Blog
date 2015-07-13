from django.shortcuts import render_to_response
from django.core.paginator import Paginator
from .models import *
from blog import settings
from markdown import markdown2
import datetime

def home(request, page_num=1):
	now = datetime.datetime.now()
	if now.hour <= 7:
		greet = 'Why not sleep more?'
	elif now.hour <= 12:
		greet = 'A beautiful morning!'
	elif now.hour <= 18:
		greet = 'Enjoy your afernoon.'
	else:
		greet = 'Have a good dream, lw.'

	for post in article.objects.all():
	    post.content = markdown2.markdown(post.content)
	paginator = Paginator(article.objects.all(), settings.PAGE_NUM)
	return render_to_response('index.html', {'blogs': paginator.page(page_num), 'greet': greet})

def content(request, blogID):
    post = article.objects.get(pk=blogID)
    post.content = markdown2.markdown(post.content)
    return render_to_response('content.html', {'blog': post, 'blogs': article.objects.all()})

def about(request):
	return render_to_response('about.html', {'blogs': article.objects.all()})