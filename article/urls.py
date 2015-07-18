from django.conf.urls import url, patterns

urlpatterns = patterns('article.views',
					   url(r'^(?P<blogTitle>\w+)$', 'content'),
                       url(r'^page/(?P<page_num>\d+)', 'home'),
                       url(r'^tag/(?P<tagTitle>\w+)/(?P<page_num>\d+)', 'tagArchives'),
)