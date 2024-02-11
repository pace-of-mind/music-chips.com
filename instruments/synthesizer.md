---
layout: archive
title: Music Production Tips for Synthesizer
---
{% assign instrument = "synthesizer" %}
<ul>
{% for chip in site.chips %}
  {% if chip.instrument contains instrument %}
  <li><a href="{{ chip.url }}">{{ chip.title }}</a></li>
  {% endif %}
{% endfor %}
</ul>
