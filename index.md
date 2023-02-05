---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
---
# Music Production Chips
This is a community-managed collection of tips and tricks for all stages of the music production process.
All chips are labeled by Stage, Genre, Instrument, and Skill Level.

## Random Chip
{% assign random_chip = site.chips | sample %}
### [{{ random_chip.title }}]({{ random_chip.url }})
``` {{ random_chip.description }} ```


## Music Production Stages
{% assign stages = site.data.stages | map: 'stages' | uniq %}
{% for stage in stages %}
  <h3>{{ stage }}</h3>
  <ul>
  {% for chip in site.chips %}
    {% if chip.stage contains stage %}
    <li><a href="{{ chip.url }}">{{ chip.title }}</a></li>
    {% endif %}
  {% endfor %}
  </ul>
{% endfor %}

{% assign stages = site.data.stages.stage %}
{% assign size = stages | size | minus: 1 %}
{% for i in (0..size) %}
- {{ stages[i] }}
{% endfor %}

<!-- ## Music Production Genres
{%  for hash in site.data.genres -%}
    {{hash[0]}},
{%- endfor %}

{% assign genres = site.data.genres %}
{% assign size = genres | size | minus: 1 %}
{% assign genre = genres[0] %}
{{ genre }}
{% for i in (0..size) %}
{{ genre[i] }}
- {{ genre[0] }}
{% endfor %} -->
