from django.conf.urls import url, patterns
from .views import *

urlpatterns = patterns('article.views',
	url(r'^$', 'home'),
	url(r'^(?P<blogID>\d+)$', 'content'),
)