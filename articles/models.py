from django.db import models


class Tag(models.Model):

    def __unicode__(self):
        return unicode(self.title)

    title = models.CharField(max_length=50, unique=True)
    

class Article(models.Model):

    def __unicode__(self):
        return self.title

    title = models.CharField(max_length=150, unique=True)
    content = models.TextField(blank=True)
    publish_time = models.DateTimeField(auto_now_add=True)
    tags = models.ManyToManyField(Tag)
