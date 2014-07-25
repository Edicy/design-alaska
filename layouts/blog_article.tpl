<!DOCTYPE html>
<html class="{% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
<head prefix="og: http://ogp.me/ns#">
  {% include "html-head" %}
</head>

<body class="post-page">
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
          <div class="wrap">
            <h2 class="comments-title">{{ 'replies' | lcc : article.comments_count }}</h2>

            <section class="comment-messages content-formatted">
              {% for comment in article.comments reversed %}
                <div class="comment">{{ comment.body_html }} ({{ comment.author }}, {{ comment.created_at | date : "%b %d, %Y" }})<div>{% removebutton %}</div></div>
              {% endfor %}
            </section>

            {% unless article.new_record? %}{% include "comment-form" %}{% endunless %}
          </div>
        </section>
      </article>
    </main>

    {% include "footer" %}

  </div>

  {% include "javascripts" %}
  {% include "bg-picker" %}
</body>
</html>
