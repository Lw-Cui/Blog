from django.shortcuts import render
from django.shortcuts import render_to_response
import datetime
from .models import *

# Create your views here.

def home(request):
	now = datetime.datetime.now()
	if now.hour <= 7:
		greet = 'Good dawn, lw.'
	elif now.hour <= 12:
		greet = 'Good morning, lw.'
	elif now.hour <= 18:
		greet = 'Good afernoon, lw.'
	else:
		greet = 'Good night, lw.'
	return render_to_response('index.html', 
		{'blogs': article.objects.all(), 'greet': greet})

