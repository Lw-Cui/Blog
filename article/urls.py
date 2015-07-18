from django.conf.urls import url, patterns

urlpatterns = patterns('article.views',
					   url(r'^(?P<blogID>\d+)$', 'content'),
                       url(r'^page/(?P<page_num>\d+)', 'home'),
                       url(r'^tag/(?P<tagId>\d+)/(?P<page_num>\d+)', 'tagArchives'),
)