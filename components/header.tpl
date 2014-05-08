<header class="header">
  {% if site.root_item.selected? %}
    {% if editmode %}<button class="bgpicker-btn js-bgpicker-cover-settings" data-bg-image="{{ page.data.cover_image }}" data-bg-color="{{ page.data.cover_color }}"></button>{% endif %}
    <div class="header-banner js-bgpicker-cover-image"{% if page.data.cover_image %} style="background-image: url('{{ page.data.cover_image }}');"{% endif %}>
      <div class="background-color js-bgpicker-cover-color"{% if page.data.cover_color %} style="background-color: {{ page.data.cover_color }};{% if page.data.cover_image %} opacity: 0.5;{% endif %}"{% endif %}></div>
      <div class="wrap">
        <div class="align-middle">
          <div class="header-title content-formatted">{% unless editmode %}<a href="{{ site.root_item.url }}">{% endunless %}{% editable site.header %}{% unless editmode %}</a>{% endunless %}</div>
          <div class="header-slogan content-formatted">{% content name="slogan" %}</div>
        </div>
      </div>
    </div>
  {% endif %}

  {% include "topbar" %}
</header>
