<header class="site-header">
  <section class="header-banner" role="banner">
    <div class="wrap">
      <h1 class="header-logo cfx">
        {% unless editmode %}<a href="{{ site.root_item.url }}">{% endunless %}{% editable site.header %}{% unless editmode %}</a>{% endunless %}
      </h1>
      <div class="header-slogan">{% content name="slogan" %}</div>
    </div>
  </section>

  <section class="header-bar">
    <div class="wrap cfx">
      <section class="header-left">
        <h1 class="header-title">{% unless editmode %}<a href="{{ site.root_item.url }}">{% endunless %}{% editable site.header %}{% unless editmode %}</a>{% endunless %}</h1>
      </section>
      <section class="header-right">
        <nav class="main-menu" role="navigation">
          <div class="wrap cfx">
            <ul class="menu horizontal">
              {% unless site.root_item.hidden? %}
                <li{% if site.root_item.selected? %} class="active"{% endif %}><a href="{{ site.root_item.url }}">{{ site.root_item.title }}</a></li>
              {% endunless %}
              {% for item in site.visible_menuitems %}
                <li{% if item.selected? %} class="active"{% endif %}{% unless item.translated? %} class="untranslated"{% endunless %}><a href="{{item.url}}">{{ item.title }}</a></li>
              {% endfor %}
              {% if editmode %}
                {% if site.hidden_menuitems.size > 0 %}
                  <li>{% menubtn site.hidden_menuitems %}</li>
                {% endif %}
                <li>{% menuadd %}</li>
              {% endif %}
            </ul>
          </div>
        </nav>
      </section>
    </div>
  </section>
</header>