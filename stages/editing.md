---
layout: archive
title: Editing Tips for Music Producers
---
{% assign stage = "editing" %}
<ul>
{% for chip in site.chips %}
  {% if chip.stage contains stage %}
  <li><a href="{{ chip.url }}">{{ chip.title }}</a></li>
  {% endif %}
{% endfor %}
</ul>
