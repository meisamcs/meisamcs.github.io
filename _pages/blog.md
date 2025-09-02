---
layout: archive
title: "Blog"
permalink: /blog/
author_profile: true
entries_layout: list
---

{% include base_path %}

{% for post in site.posts %}
  {% include archive-single.html type="posts" %}
{% endfor %}
