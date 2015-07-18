from django.shortcuts import render_to_response
from django.core.paginator import Paginator
from models import *
from blog import settings
from markdown import markdown2
import datetime

def render_post(post):
	post.content = markdown2.markdown(post.content)
	return post

def present():
    now = datetime.datetime.now()
    if now.hour <= 7:
        return  'dawn'
    elif now.hour <= 12:
        return 'morning'
    elif now.hour <= 18:
        return 'afternoon'
    else:
        return 'evening'

def tagArchives(request, tagId, page_num = 1):
    post_list = list(map(render_post, article.objects.filter(tags__id = tagId)))
    paginator = Paginator(post_list, settings.PAGE_NUM)
    dict = {'blogs': paginator.page(page_num),
            'tag': tag.objects.get(id = tagId),
            'name': present()}
    dict['tags'] = tag.objects.all()
    return render_to_response('tagArchives.html', dict)

def home(request, page_num = 1):
    if present() == 'dawn':
        greet = 'Why not sleep more?'
    elif present() == 'morning':
        greet = 'A beautiful morning!'
    elif present() == 'afternoon':
        greet = 'Enjoy your afternoon.'
    else:
        greet = 'Have a good dream, lw.'

    post_list = list(map(render_post, article.objects.all()))
    paginator = Paginator(post_list, settings.PAGE_NUM)
    dict = {'blogs': paginator.page(page_num),
            'greet': greet,
            'name': present()}
    dict['tags'] = tag.objects.all()
    return render_to_response('home.html', dict)

def content(request, blogID):
    post = article.objects.get(pk=blogID)
    post.content = markdown2.markdown(post.content)
    dict = {'blog': post,
            'name': present()}
    dict['tags']  = tag.objects.all()
    return render_to_response('content.html', dict)

def about(request):
    return render_to_response('about.html', {'tags':tag.objects.all(),
                                             'name':present()})