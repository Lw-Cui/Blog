from django.conf.urls import url, patterns
from .views import *

urlpatterns = patterns('hellolw.blog.views',
	url(r'^$', home),
	url(r'^(?P<blog_id>\d+)/(?P<blog_link>[\w,-]*)$', 'blog_detail', name='blog_detail'),
	url(r'^archives/(?P<page_num>\d?)$', 'archives', name='archives'),
)
