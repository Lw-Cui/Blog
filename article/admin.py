from django.contrib import admin
from .models import *
# Register your models here.

class articleAdmin(admin.ModelAdmin):
	list_display = ('title', 'publishTime', 'Tags')
	list_filter = ('publishTime', 'tags')
	date_hierarchy = 'publishTime'
	ordering = ('-publishTime',)
	filter_horizontal = ('tags',)

	def Tags(self, articleObj):
		return "".join([p.title for p in articleObj.tags.all()])

admin.site.register(article, articleAdmin)
admin.site.register(tag)