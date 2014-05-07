<header class="header">
  <div class="wrap">
    <section class="header-left">
      <div class="header-title content-formatted">{% unless editmode %}<a href="{{ site.root_item.url }}">{% endunless %}{% editable site.header %}{% unless editmode %}</a>{% endunless %}</div>

      <button class="menu-btn js-menu-btn">
        <span class="menu-stripe"></span>
        <span class="menu-stripe"></span>
        <span class="menu-stripe"></span>
      </button>
    </section>

    <section class="header-right">
      {% include "search" %}

      {% if editmode or site.has_many_languages? %}
        <nav class="menu-lang">
          {% include "menu-lang" %}
        </nav>
      {% endif %}

      <nav class="menu-main js-menu-main">
        {% include "menu-level-1" %}
        {% if editmode or site.has_many_languages? %}
          <div class="mobile-menu-lang menu-lang">
            {% include "menu-lang" %}
          </div>
        {% endif %}
      </nav>
    </section>
  </div>
</header>
