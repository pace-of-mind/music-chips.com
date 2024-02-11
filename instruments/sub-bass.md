---
layout: archive
title: Music Production Tips for Sub-Bass
---
{% assign instrument = "sub-bass" %}
<ul>
{% for chip in site.chips %}
  {% if chip.instrument contains instrument %}
  <li><a href="{{ chip.url }}">{{ chip.title }}</a></li>
  {% endif %}
{% endfor %}
</ul>
