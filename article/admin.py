from django.contrib import admin
from .models import *
# Register your models here.

class articleAdmin(admin.ModelAdmin):
	list_display = ('title', 'publishTime',)
	list_filter = ('publishTime',)
	date_hierarchy = 'publishTime'
	ordering = ('publishTime',)

admin.site.register(article, articleAdmin)