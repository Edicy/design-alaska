<header class="header js-header">
  {% if front_page == true %}
    {% if editmode %}<button class="bgpicker-btn js-bgpicker-header-settings" data-bg-image="{{ header_image }}" data-bg-color="{{ header_color }}"></button>{% endif %}
    <div class="background-image js-bgpicker-header-image"{{ header_image_style }}>
      <div class="background-color js-bgpicker-header-color"{{ header_image_color }}></div>
      <div class="wrap">
        <div class="align-middle">
          <div class="header-title content-formatted">{% unless editmode %}<a href="{{ site.root_item.url }}">{% endunless %}{% editable site.header %}{% unless editmode %}</a>{% endunless %}</div>
          <div class="header-slogan content-formatted">{% content name='slogan' %}</div>
        </div>
      </div>
    </div>
  {% endif %}

  {% include 'site-topbar' %}
</header>
