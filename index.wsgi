import sae
import sys 
import os 
from blog import wsgi

app_root = os.path.dirname(__file__) 
sys.path.insert(0, os.path.join(app_root, 'blog')) 
sys.path.insert(0, os.path.join(app_root, 'site-packages'))

os.environ['DJANGO_SETTINGS_MODULE'] = 'blog.settings' 

application = sae.create_wsgi_app(wsgi.application)