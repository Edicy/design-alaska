<!DOCTYPE html>
<html class="{% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
<head>
  {% include "html-head" %}

  <meta property="og:url" content="{{ site.url }}">
  <meta property="og:title" content="{{ site.name }}">
  <meta property="og:description" content="{{ page.description }}">
  <meta property="og:image" content="{{ site.url }}{{ photos_path }}/{{ page.data.fbimage }}"><!-- TODO: Add image location data tag -->
</head>

<body class="post-page js-bgpicker-body-image" {% if site.data.body_image %}style="background-image: url('{{ site.data.body_image}}');"{% endif %}>
  {% if editmode %}<button class="bgpicker-btn js-bgpicker-body-settings" data-bg-image="{{ site.data.body_image }}" data-bg-color="{{ site.data.body_color }}"></button>{% endif %}
  <div class="background-color js-bgpicker-body-color"{% if site.data.body_color %} style="background-color: {{ site.data.body_color }};{% if site.data.body_image %} opacity: 0.5;{% endif %}"{% endif %}></div>

  <div class="container">
    {% include "header" %}

    <main class="content" role="main">
      <article class="post">
        <header class="post-header">
          <div class="wrap">
            <h2 class="post-title">{% editable article.title %}</h2>
          </div>
        </header>

        <section class="post-body">
          <div class="wrap">
            <div class="post-excerpt content-formatted">{% editable article.excerpt %}</div>
            <div class="post-body content-formatted">{% editable article.body%}</div>
          </div>
        </section>

        <section class="comments content-formatted">
          {% case article.comments_count %}{% when 0 %}{% else %}<h2 class="comments-title">{{ "comments_for_count" | lc }}: <span class="edy-site-blog-comments-count">{{ article.comments_count }}</span></h2>{% endcase %}

          <section class="comment-messages content-formatted">
            {% for comment in article.comments reversed %}
              <div class="comment">{{ comment.body }} ({{ comment.author }}, {{ comment.created_at | date : "%b %d, %Y" }})</div>
            {% endfor %}
          </section>

          {% include "comment-form" %}
        </section>
      </article>
    </main>

    {% include "footer" %}

  </div>

  {% include "javascripts" %}
  {% include "bg-picker" %}
</body>
</html>
