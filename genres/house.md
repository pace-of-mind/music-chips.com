---
layout: archive
title: Music Production Tips for House
---
{% assign genre = "house" %}
<ul>
{% for chip in site.chips %}
  {% if chip.genre contains genre %}
  <li><a href="{{ chip.url }}">{{ chip.title }}</a></li>
  {% endif %}
{% endfor %}
</ul>
