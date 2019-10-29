---
title: "Tags"
date: 2019-10-08T12:07:17+02:00
layout: post
---

<div id="archives">
{% for tag in site.tags %}
  <div class="archive-group">
    {% capture tag_name %}{{ tag | first }}{% endcapture %}
    <div id="#{{ tag_name | slugize }}"></div>
    <p></p>

    <h3 class="tag-head">{{ tag_name }}</h3>
    <a name="{{ tag_name | slugize }}"></a>
    {% for post in site.tags[tag_name] %}
      <a href="{{ site.baseurl }}{{ post.url }}">{{post.title}}</a><br>
    {% endfor %}
  </div>
{% endfor %}
</div>