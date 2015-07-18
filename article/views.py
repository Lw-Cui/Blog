from django.shortcuts import render_to_response
from django.template import loader, RequestContext
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

def temp_proc(request):
    return {
        'tags': tag.objects.all(),
        'name': present(),
    }

def tagArchives(request, tagId, page_num = 1):
    post_list = list(map(render_post, article.objects.filter(tags__id = tagId)))
    paginator = Paginator(post_list, settings.PAGE_NUM)
    dict = {'blogs': paginator.page(page_num),
            'tag': tag.objects.get(id = tagId)}
    return render_to_response('tagArchives.html', dict,
                              context_instance = RequestContext(request, processors=[temp_proc]))

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
            'greet': greet,}
    return render_to_response('home.html', dict,
                              context_instance = RequestContext(request, processors=[temp_proc]))

def content(request, blogID):
    post = article.objects.get(pk=blogID)
    post.content = markdown2.markdown(post.content)
    dict = {'blog': post,}
    return render_to_response('content.html', dict,
                              context_instance = RequestContext(request, processors=[temp_proc]))

def about(request):
    return render_to_response('about.html', {},
                              context_instance = RequestContext(request, processors=[temp_proc]))
