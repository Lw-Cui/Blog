from django.shortcuts import render_to_response
from django.core.paginator import Paginator
from .models import *
from blog import settings
from markdown import markdown2
import datetime

def render_post(post):
	post.content = markdown2.markdown(post.content)
	return post

def tagIndex(request, tagId, page_num = 1):
		post_list = list(map(render_post, article.objects.filter(tags__id = tagId)))
		paginator = Paginator(post_list, settings.PAGE_NUM)
		return render_to_response('tagIndex.html', {'blogs': paginator.page(page_num), 
			'tag': tag.objects.get(id = tagId),
			'tags':tag.objects.all()})

def home(request, page_num = 1,):
	now = datetime.datetime.now()
	if now.hour <= 7:
		greet = 'Why not sleep more?'
	elif now.hour <= 12:
		greet = 'A beautiful morning!'
	elif now.hour <= 18:
		greet = 'Enjoy your afternoon.'
	else:
		greet = 'Have a good dream, lw.'

	post_list = list(map(render_post, article.objects.all()))
	paginator = Paginator(post_list, settings.PAGE_NUM)
	return render_to_response('index.html', {'blogs': paginator.page(page_num), 
		'greet': greet, 'tags':tag.objects.all()})

def content(request, blogID):
	post = article.objects.get(pk=blogID)
	post.content = markdown2.markdown(post.content)
	return render_to_response('content.html', {'blog': post, 'blogs': article.objects.all(),
		'tags':tag.objects.all()})

def about(request):
	content = ['#####Hello, welcome to my blog!\n',
	'My name is *Cui LiWei*.',
	'I\'m an <del>excellent</del> **computer science major student**@[UESTC](http://www.uestc.edu.cn/)  at present, ',
	'and a <del>brilliant</del> **software engineer** in the future:).\n\n',
	'contact ME: [lw@gitHub](https://github.com/Lw-Cui) || <A href="mailto:cui@hellolw.com">cui@hellolw.com</A>\n\n',
	'#####`printf("Enjoy it");`#####']
	profile = ''
	for str in content:
	 	profile += str
	profile = markdown2.markdown(profile)
	return render_to_response('about.html', {'blogs': article.objects.all(), 'profile': profile,
		'tags':tag.objects.all()})