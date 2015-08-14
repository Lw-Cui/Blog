# Create your views here.
from django.shortcuts import render_to_response
from django.core.paginator import Paginator
from models import Tag, Article
from newBlog import settings
import markdown
import datetime


def present():
    now = datetime.datetime.now()
    if now.hour <= 7:
        return 'dawn'
    elif now.hour <= 12:
        return 'morning'
    elif now.hour <= 18:
        return 'afternoon'
    else:
        return 'evening'


def process_dict(dict):
    dict["tags"] = Tag.objects.all()
    dict["name"] = present()
    return dict


def content(request, blog_id):
    post = Article.objects.get(id=blog_id)
    post.content = markdown.markdown(post.content)
    dict = {
        'blog': post,
    }
    return render_to_response('content.html', process_dict(dict))


def home(request, page_num=1):

    if present() == 'dawn':
        greet = 'Why not sleep more?'
    elif present() == 'morning':
        greet = 'A beautiful morning!'
    elif present() == 'afternoon':
        greet = 'Enjoy your afternoon.'
    else:
        greet = 'Have a good dream, lw.'

    post_list = list(Article.objects.all())
    for article in post_list:
        article.content = markdown.markdown(article.content)
    paginator = Paginator(post_list, settings.PAGE_NUM)
    dict = {
        'blogs': paginator.page(page_num),
        'greet': greet,
    }
    return render_to_response('home.html', process_dict(dict))


def tag_archives(request, tag_id, page_num):
    post_list = list(Article.objects.filter(tags__id=tag_id))
    paginator = Paginator(post_list, settings.PAGE_NUM)
    dict = {
        'blogs': paginator.page(page_num),
        'tag': Tag.objects.get(id=tag_id)
    }
    return render_to_response('tagArchives.html', process_dict(dict))


def about(request):
    return render_to_response('about.html', process_dict({}))


