<!DOCTYPE html>
<html lang="et">
<head>
  {% include "html-head" %}
  {% stylesheet_link "edicyThumbEditor.css" %}
  <style>
    #thumb-wrapper {
      width: 200px;
      height: 200px;
    }
  </style>
</head>

<body>
  <section class="site-content cfx">
    {% include "site-header" %}

    <main class="page-content page cfx" role="main">
        <header class="page-header">
          <h1 class="page-title">{% contentblock name="page-title" %}This family house stands amongst dense pine trees on the outskirts of Alaska{% endcontentblock %}</h1>
        </header>

        <section class="common-page">
          <div class="wrap cfx">
            {% content %}
          </div>
        </section>
        
    </main>

    {% include "site-footer" %}
  </section>

  {% include "javascripts" %}
  <script>project.initCommonPage();</script>
  
</body>
</html>