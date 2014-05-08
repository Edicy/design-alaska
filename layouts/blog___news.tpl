<!DOCTYPE html>
<html class="{% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
<head>
  {% include "html-head" %}

  <meta property="og:url" content="{{ site.url }}">
  <meta property="og:title" content="{{ site.name }}">
  <meta property="og:description" content="{{ page.description }}">
  <meta property="og:image" content="{{ site.url }}{{ photos_path }}/{{ page.data.fbimage }}"><!-- TODO: Add image location data tag -->

  {{ blog.rss_link }}
</head>

<body class="blog-page js-bgpicker-body-image" {% if site.data.body_image %}style="background-image: url('{{ site.data.body_image}}');{% if site.data.body_color %} position: relative;{% endif %}"{% endif %}>
  {% if editmode %}<button class="bgpicker-btn js-bgpicker-body-settings" data-bg-image="{{ site.data.body_image }}" data-bg-color="{{ site.data.body_color }}"></button>{% endif %}
  <div class="background-color js-bgpicker-body-color"{% if site.data.body_color %} style="background-color: {{ site.data.body_color }};{% if site.data.body_image %} opacity: 0.5;{% endif %}{% endif %}"></div>

  <div class="container">
    {% include "header" %}

    <main class="content" role="main">
      <section class="blog">
        {% include "tags-blog" %}

        {% if editmode %}<div class="post-add-btn wrap">{% addbutton %}</div>{% endif %}

        {% for article in articles %}
          <article class="post post-position">
            <a class="post-top" href="{{ article.url }}">
              {% if article.data.post_image %}<div class="background-image" style="background-image: url('{{ article.data.post_image }}');"></div>{% endif %}
              {% if article.data.post_color %}<div class="background-color" style="background-color: {{ article.data.post_color }};{% if article.data.post_image %} opacity: 0.5;{% endif %}"></div>{% endif %}

              <header class="post-header">
                <h2 class="post-title">{{ article.title }}</h2>
              </header>
            </a>

            <div class="post-bottom">
              <section class="post-content">
                <div class="post-excerpt content-formatted">{{ article.excerpt }}</div>
              </section>

              <footer class="post-footer">
                <time class="post-date" datetime="{{ article.created_at | date : '%Y-%m-%d' }}">{{ article.created_at | date : "%B %d, %Y" }}</time>
              </footer>
            </div>
          </article>
        {% endfor %}
      </section>
    </main>

    {% include "footer" %}

  </div>

  {% include "javascripts" %}
  {% include "bg-picker" %}

  <script>
    $(document).ready(function() {
      currentUrl = window.location.href;
      blogUrl = '{{ site.url }}{{ page.path }}';
      if (currentUrl === blogUrl) {
        $('.js-tags-all').addClass('active');
      };
    });

    site.initBlogPage();
  </script>
</body>
</html>
