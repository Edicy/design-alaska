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
      <div class="blog">
        {% include "tags-blog" %}

        {% if editmode %}
          <div class="post-add-btn">
            <div class="wrap">{% addbutton %}</div>
          </div>
        {% endif %}

        <section class="blog-articles">
          <span class="loading-status js-loading-status">
            <div class="wrap">
              <div class="loader">
                <div class="loader-cube-1"></div>
                <div class="loader-cube-2"></div>
              </div>
            </div>
          </span>
        </section>

        {% if articles.size > 3 %}
          <nav class="menu-pagination"></nav>
        {% endif %}
      </div>
    </main>

    {% include "footer" %}
  </div>

  {% include "javascripts" %}
  {% include "bg-picker" %}

  <script>var langCode = "{{ page.language_code }}";</script>
  <script src="{{ javascripts_path }}/articlePages.js?1"></script>
  <script type="text/html" id="article-template">
    <article class="post">
      <div class="wrap">
        <header class="post-header">
          <h2 class="post-title"><a href="[[url]]">[[title]]</a></h2>
          {% include "tags-post" %}
        </header>

        <div class="post-content">
          <div class="post-excerpt content-formatted">[[excerpt]]</div>
        </div>

        <footer class="post-footer">
          <time class="post-date" datetime="[[dateAttr]]">[[date]]</time>
        </footer>
      </div>
    </article>
  </script>

  <script>
    $('.blog-articles').articlePages({
        nr_articles: {{ articles.size }},
        // TODO: Needs language based values
        older: "Next",
        newer: "Previous"
    });

    $('.blog-articles').on({
      'articles.loading': function() { $('js-loading-status').html('<div class="wrap"><div class="loader"><div class="loader-cube-1"></div><div class="loader-cube-2"></div></div></div>'); },
      'articles.loaded': function() { $('js-loading-status').html(''); }
    });

    $('.menu-pagination').append($('.blog-articles').articlePages('getPageLinks'));

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
