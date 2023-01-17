---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: archive
title: All Chips
permalink: "/chips.html"
---
<ul>
  {% for chip in site.chips %}
    <li>
      <a href="{{ chip.url }}"><h2>{{ chip.title }}</h2></a>
      <p>{{ chip.description }}</p>
      <p>{% for genre in chip.genre %}{{ genre }} {% endfor %}</p>
    </li>
  {% endfor %}
</ul>
