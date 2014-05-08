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
