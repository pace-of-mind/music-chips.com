---
layout: archive
title: By Level
---
{% assign tags = site.data.level | map: 'level' | uniq %}
{% for tag in tags %}
  <h3>{{ tag }}</h3>
  <ul>
  {% for chip in site.chips %}
    {% if chip.level contains tag %}
    <li><a href="{{ chip.url }}">{{ chip.title }}</a></li>
    {% endif %}
  {% endfor %}
  </ul>
{% endfor %}