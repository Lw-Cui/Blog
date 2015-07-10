import sae
import sys 
import os 
from blog import wsgi

app_root = os.path.dirname(__file__) 
sys.path.insert(0, os.path.join(app_root, 'blog')) 
os.environ['DJANGO_SETTINGS_MODULE'] = 'blog.settings' 

root = os.path.dirname(__file__)
sys.path.insert(0, os.path.join(root, 'site-packages'))

application = sae.create_wsgi_app(wsgi.application)

import django.core.handlers.wsgi 
application = sae.create_wsgi_app(django.core.handlers.wsgi.WSGIHandler()) 

