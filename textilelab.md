---
title: "Textilelab"
date: 2019-10-10T10:48:31+02:00
layout: post
---

{% for post in site.categories.textilelab %}
 <li><span>{{ post.date | date_to_string }}</span> &nbsp; <a href="{{ post.url }}">{{ post.title }}</a></li>
{% endfor %}