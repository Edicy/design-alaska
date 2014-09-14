<!DOCTYPE html>
<html class="{% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
<head prefix="og: http://ogp.me/ns#">
  {% include "html-head" %}
</head>

<body class="common-page">
  <div class="container">
    {% include "header" %}

    <main class="content" role="main">
      <header class="content-header content-formatted">
        <div class="wrap">{% content name="slogan" %}</div>
      </header>

      <!-- TODO: Custom image area -->
      <!-- <section class="content-images"></section> -->

      <div class="content-body">
        <section class="wrap content-formatted">{% content %}</section>
      </div>
    </main>

    {% include "footer" %}

  </div>

  {% include "javascripts" %}
  {% include "edicy-tools" %}
</body>
</html>
