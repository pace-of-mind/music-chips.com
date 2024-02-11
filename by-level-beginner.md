---
layout: archive
title: Beginners Tips for Music Producers
---
{% assign tag = "beginner" %}
<ul>
{% for chip in site.chips %}
  {% if chip.level contains tag %}
  <li><a href="{{ chip.url }}">{{ chip.title }}</a></li>
  {% endif %}
{% endfor %}
</ul>
