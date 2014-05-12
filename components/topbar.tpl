<aside class="topbar">
  <div class="wrap">
    <section class="topbar-left">
      {% unless site.root_item.selected? %}
        <div class="topbar-title content-formatted">{% unless editmode %}<a href="{{ site.root_item.url }}">{% endunless %}{% editable site.header %}{% unless editmode %}</a>{% endunless %}</div>
      {% endunless %}

      <button class="menu-btn js-menu-btn">
        <span class="menu-stripe"></span>
        <span class="menu-stripe"></span>
        <span class="menu-stripe"></span>
      </button>
    </section>

    <section class="topbar-right">
      {% include "search" %}

      <nav class="menu-main js-menu-main">
        {% include "menu-level-1" %}
        {% if editmode or site.has_many_languages? %}
          <div class="menu-lang-mobile menu-lang">
            {% include "menu-lang" %}
          </div>
        {% endif %}
      </nav>

      {% if editmode or site.has_many_languages? %}
        <nav class="menu-lang">
          <button class="menu-lang-btn js-menu-lang-btn lang-flag {% for language in site.languages %}{% if language.selected? %}{{ language.code }}{% endif %}{% endfor %}">Choose language</button>
          <div class="menu-lang-popover js-menu-lang-popover">
            {% include "menu-lang" %}
          </div>
        </nav>
      {% endif %}
    </section>
  </div>
</aside>
