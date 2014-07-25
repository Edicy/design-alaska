<script src="{{ javascripts_path }}/application.js"></script>
<script src="{{ site.static_asset_host }}/libs/picturefill/1.0.0/picturefill.min.js"></script>

{% if site.search.enabled %}
  <script src="http://static.edicy.com/assets/site_search/3.0/site_search.js?2"></script>
  <script>
    var edys_site_search_options = {
      texts: { noresults: "{{ "search_noresults" | lc }}" },
      default_stylesheet_enabled: false
    }
  </script>
{% endif %}

{% unless editmode %}{{ site.analytics }}{% endunless %}

