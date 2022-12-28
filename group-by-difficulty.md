---
layout: default
title: By Difficulty
---
{% assign tags = site.data.difficulty | map: 'difficulty' | uniq %}
{% for tag in tags %}
  <h3>{{ tag }}</h3>
  <ul>
  {% for chip in site.chips %}
    {% if chip.difficulty contains tag %}
    <li><a href="{{ chip.url }}">{{ chip.title }}</a></li>
    {% endif %}
  {% endfor %}
  </ul>
{% endfor %}
