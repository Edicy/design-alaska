<!DOCTYPE html>
<html lang="{{ page.language_code }}">
<head>
  {% include "html-head" %}
</head>

<body>
  <section class="site-content cfx">
    {% include "site-header" %}

    <main class="page-content blog cfx" role="main">
      <div class="articles-container">
        <span id="loading-status">Loading ...</span>
      </div>
      
      {% if articles.size > 5 %}
        <div id="pagination" class="page-numbers">
          <div class="wrap">
          </div>
        </div>
      {% endif %}
    </main>

    {% include "site-footer" %}
  </section>
  
  {% include "javascripts" %}
  <script>var langCode = "{{ page.language_code }}";</script>
  <script src="{{ javascripts_path }}/jquery.articlePages.js"></script>
  <script type="text/html" id="article-template">
    <article class="post">
      <div class="wrap cfx">
        <h2 class="post-title"><a href="[[url]]">[[title]]</a></h2>
        <div class="post-excerpt">
          <p>[[excerpt]]</p>
        </div>
        <time datetime="[[dateAttr]]" class="post-date">[[date]]</time>
      </div>
    </article>
  </script>
  
  <script type="text/javascript">
    $('.articles-container').articlePages({
        nr_articles: {{ articles.size }},
        older: "Next",
        newer: "Previous"
    });

    $('.article-container').on({
      'articles.loading': function() { $('#loading-status').html('Loading ...'); },
      'articles.loaded': function() { $('#loading-status').html(''); }
    });
  
    $('#pagination .wrap').append($('.articles-container').articlePages('getPageLinks'));  
  </script>
  <script>project.initBlogPage();</script>
</body>
</html>