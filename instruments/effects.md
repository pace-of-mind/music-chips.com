---
layout: archive
title: Music Production Tips for Sound Effects
---
{% assign instrument = "effects" %}
<ul>
{% for chip in site.chips %}
  {% if chip.instrument contains instrument %}
  <li><a href="{{ chip.url }}">{{ chip.title }}</a></li>
  {% endif %}
{% endfor %}
</ul>
