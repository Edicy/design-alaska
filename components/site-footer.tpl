  <footer class="site-footer wrap cfx">
    <section class="footer-left">
      {% contentblock name="footer-title" xpage="true" %}{{ site.header }}{% endcontentblock %}
    </section>
    <section class="footer-right">
      {% xcontent name="footer" %}
    </section>
  </footer>
</div>