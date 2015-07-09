import sae
import os 
from blog import wsgi

app_root = os.path.dirname(__file__) 
sys.path.insert(0, os.path.join(app_root, 'blog')) 
os.environ['DJANGO_SETTINGS_MODULE'] = 'blog.settings' 

application = sae.create_wsgi_app(wsgi.application)

import sys 
import django.core.handlers.wsgi 

application = sae.create_wsgi_app(django.core.handlers.wsgi.WSGIHandler()) 
