---
title: "Fabacademy"
date: 2021-03-26T10:48:31+02:00
layout: post
---

{% for post in site.categories.fabacademy %}
 <li><span>{{ post.date | date_to_string }}</span> &nbsp; <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></li>
{% endfor %}