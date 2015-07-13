from django.conf.urls import url, patterns
from .views import *

urlpatterns = patterns('article.views',
	url(r'^(?P<blogID>\d+)$', 'content'),
	url(r'^page/(?P<page_num>\d+)', 'home'),
)