<!DOCTYPE html>
<html class="{% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
<head prefix="og: http://ogp.me/ns#">
  {% include "html-head" %}
<<<<<<< HEAD
  {% if editmode %}<link rel="stylesheet" href="/assets/admin/tools/latest/edicy-tools.css">{% endif %}
=======
  {% if editmode %}<link rel="stylesheet" href="/assets/admin/tools/0.1.3/edicy-tools.css">{% endif %}
>>>>>>> FETCH_HEAD
</head>

<body class="front-page">
  <div class="container">
    {% include "header" %}

    <main class="content" role="main">
      <header class="content-header content-formatted">
        <div class="wrap">{% content name="header_1" %}</div>
      </header>

      <!-- TODO: Add custom image gallery-->
<!--       <section class="custom-gallery">
        <div class="wrap">
          <div class="gallery-inner gallery-left">
            <div class="custom-image custom-image-1" style="background-image: url('{{ photos_path }}/gallery-1.jpg');"></div>
            <div class="custom-image custom-image-2" style="background-image: url('{{ photos_path }}/gallery-1.jpg');"></div>
            <div class="custom-image custom-image-3" style="background-image: url('{{ photos_path }}/gallery-1.jpg');"></div>
            <div class="custom-image custom-image-4" style="background-image: url('{{ photos_path }}/gallery-1.jpg');"></div>
          </div>

          <div class="gallery-inner gallery-right">

          </div>
        </div>
      </section> -->

      <header class="content-header content-formatted">
        <div class="wrap">{% content name="header_2" %}</div>
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
