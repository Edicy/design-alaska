<!DOCTYPE html>
<html class="{% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
<head>
  {% include "html-head" %}

  <meta property="og:url" content="{{ site.url }}">
  <meta property="og:title" content="{{ site.name }}">
  <meta property="og:description" content="{{ page.description }}">
  <meta property="og:image" content="{{ site.url }}{{ photos_path }}/{{ page.data.fbimage }}"><!-- TODO: Add image location data tag -->
</head>

<body class="front-page js-bgpicker-body-image" {% if site.data.body_image %}style="background-image: url('{{ site.data.body_image}}');"{% endif %}>
  {% if editmode %}<button class="bgpicker-btn js-bgpicker-body-settings" data-bg-image="{{ site.data.body_image }}" data-bg-color="{{ site.data.body_color }}"></button>{% endif %}
  <div class="background-color js-bgpicker-body-color"{% if site.data.body_color %} style="background-color: {{ site.data.body_color }};{% if site.data.body_image %} opacity: 0.5;{% endif %}"{% endif %}></div>

  <div class="container">
    {% include "header" %}

    <main class="content" role="main">
      <header class="content-header content-formatted">
        <div class="wrap">{% content name="slogan" %}</div>
      </header>

      <header class="content-header content-formatted">
        <div class="wrap">{% content name="slogan_2" %}</div>
      </header>

      <section class="blog">
        <div class="wrap">
          <div class="blog-inner">
            {% for article in site.latest_2_articles %}
              {% include "post-box" %}
            {% endfor %}
          </div>

          <div class="blog-inner">
            {% for article in site.latest_4_articles %}
              {% if forloop.index > 2 %}
                {% include "post-box" %}
              {% endif %}
            {% endfor %}
          </div>
        </div>
      </section>
    </main>

    {% include "footer" %}

  </div>

  {% include "javascripts" %}
  {% include "bg-picker" %}
</body>
</html>
