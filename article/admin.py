from django.contrib import admin
from django_markdown.widgets import AdminMarkdownWidget
from models import Tag, Article
from django_markdown.models import MarkdownField
from django_markdown.admin import MarkdownModelAdmin


class ArticleAdmin(admin.ModelAdmin):

    def tag(self, article):
        return "".join(' ' + p.title + ' ' + ' ' for p in article.tags.all())

    list_display = ('title', 'publish_time', 'tag')
    list_filter = ('publish_time', 'tags')
    date_hierarchy = 'publish_time'
    ordering = ('-publish_time', 'tags')
    filter_horizontal = ('tags',)


#admin.site.register(Article, MarkdownModelAdmin)
admin.site.register(Article, ArticleAdmin)
admin.site.register(Tag)
