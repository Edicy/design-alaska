<!DOCTYPE html>
<html lang="et">
<head>
  {% include "html-head" %}
  {% stylesheet_link "edicyThumbEditor.css" %}
  <style>
    #thumb-wrapper {
    width: 235px;
    height: 235px;
    }
  </style>
</head>

<body>
  <section class="site-content cfx">
    {% include "site-header" %}

    <main class="page-content article cfx" role="main">
      <article class="post">
      
        <header class="post-header">
          <h1 class="post-title">{% editable article.title %}</h1>
        </header>
        
        {% include "article-custom-gallery" %}

        {% include "post-content" %}
        
      </article>
    </main>

    {% include "site-footer" %}
  </section>

  {% include "javascripts" %}
  <script>project.initArticlePage();</script>
  <script src="{{ javascripts_path }}/edicy.customFields.js"></script>
  <script src="{{ javascripts_path }}/edicy.imgDropArea.js"></script>
  
</body>
</html>