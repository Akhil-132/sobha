import imp
import os
import sys


#sys.path.insert(0, os.path.dirname(__file__))

#wsgi = imp.load_source('wsgi', 'npss/urls.py')
#application = wsgi.application


import os
from django.core.wsgi import get_wsgi_application

os.environ.setdefault(
    'DJANGO_SETTINGS_MODULE',
    'Brigade.settings')

# This application object is used by any WSGI server configured to use this
# file. This includes Django's development server, if the WSGI_APPLICATION
# setting points here.
application = get_wsgi_application()