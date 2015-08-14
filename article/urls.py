from django.conf.urls import url, patterns
from article import views


urlpatterns = patterns(
    '',
    url(r'^(?P<blog_id>\d+)$', views.content, name='content'),
    url(r'page/(?P<page_num>\d+)', views.home, name='page'),
    url(r'^tag/(?P<tag_id>\d+)/(?P<page_num>\d+)', views.tag_archives, name='tag_archives'),
    url(r'^$', views.home, name='home'),
    url(r'^about$', views.about, name='about'),
)