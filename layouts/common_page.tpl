<!DOCTYPE html>
<html class="{% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
<head>
  {% include "html-head" %}

  <meta property="og:url" content="{{ site.url }}">
  <meta property="og:title" content="{{ site.name }}">
  <meta property="og:description" content="{{ page.description }}">
  <meta property="og:image" content="{{ site.url }}{{ photos_path }}/{{ page.data.fb_image }}"><!-- TODO: Add image location data tag -->
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
  {% include "bg-picker" %}
</body>
</html>
