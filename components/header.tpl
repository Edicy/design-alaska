<header class="header">
  {% if site.root_item.selected? %}
    <div class="header-banner" stYle="background-image: url('{{ photos_path }}/header-bg.jpg');">
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
