from django.urls import path
from .views import reder_posts, post_detail

app_name = 'blog'

urlpatterns = [
    path('', reder_posts, name='posts'),
    path('<post_id>', post_detail, name="post_detail"),
]
