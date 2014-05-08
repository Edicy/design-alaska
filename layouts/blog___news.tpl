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

<body class="blog-page">
  <div class="container">
    {% include "header" %}

    <main class="content" role="main">
      <section class="blog">
        {% include "tags-blog" %}

        {% if editmode %}<div class="post-add-btn wrap">{% addbutton %}</div>{% endif %}

        {% for article in articles %}
          <article class="post">
            <div class="wrap">
              <header class="post-header">
                <h2 class="post-title"><a href="{{ article.url }}">{{ article.title }}</a></h2>
                {% include "tags-post" %}
              </header>

              <div class="post-content">
                <div class="post-excerpt content-formatted">{{ article.excerpt }}</div>
              </div>

              <footer class="post-footer">
                <time class="post-date" datetime="{{ article.created_at | date : "%Y-%m-%d" }}">{{ article.created_at | date : "%b %d, %Y" }}</time>
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
