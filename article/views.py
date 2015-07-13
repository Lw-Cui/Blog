from django.shortcuts import render_to_response
from django.core.paginator import Paginator
import datetime
from .models import *
from blog import settings

# Create your views here.

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

	paginator = Paginator(article.objects.all(), settings.PAGE_NUM)
	return render_to_response('index.html', {'blogs': paginator.page(page_num), 'greet': greet})

def content(request, blogID):
    return render_to_response('content.html', 
    	{'blog': article.objects.get(id=blogID), 'blogs': article.objects.all()})

def about(request):
	return render_to_response('about.html', {'blogs': article.objects.all()})