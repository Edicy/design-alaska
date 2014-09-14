<header class="header js-header">
  {% if site.root_item.selected? %}
    {% if editmode %}<button class="bgpicker-btn js-bgpicker-header-settings" data-bg-image="{{ page.data.header_image }}" data-bg-color="{{ page.data.header_color }}"></button>{% endif %}
    <div class="header-banner js-bgpicker-header-image"{% if page.data.header_image %} style="background-image: url('{{ page.data.header_image }}');"{% endif %}>
      <div class="background-color js-bgpicker-header-color"{% if page.data.header_color %} style="background-color: {{ page.data.header_color }};{% if page.data.header_image %} opacity: 0.5;{% endif %}"{% endif %}></div>
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
