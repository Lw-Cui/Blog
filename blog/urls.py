from django.conf.urls import patterns, include, url
from django.contrib import admin
from article.views import home, about
import settings

admin.autodiscover()

urlpatterns = patterns('',
    url(r'^admin/', include(admin.site.urls)),
    url(r'^blog/', include('article.urls')),
    url(r'^$', home),
    url(r'^about$', about),
    url(r'^static/(?P<path>.*)$', 'django.views.static.serve',{'document_root': settings.STATIC_ROOT }), 
)
