---
layout: archive
title: Music Production Tips for Techno
---
{% assign genre = "techno" %}
<ul>
{% for chip in site.chips %}
  {% if chip.genre contains genre %}
  <li><a href="{{ chip.url }}">{{ chip.title }}</a></li>
  {% endif %}
{% endfor %}
</ul>
