<section class="post-content">
  <div class="wrap cfx">
    {% if editmode %}
      {% if article.new_record? %}
        <div class="label">The article must be saved before you can add the sub-title</div>
      {% endif %}
    {% endif %}
    {% unless article.new_record? %}
      <div class="post-bind">{% contentblock name="sub-title" bind="Article" %}<h2>(Enter subtitle)</h2>{% endcontentblock %}</div>
    {% endunless %}
    <div class="post-body">
      <div>{% editable article.excerpt %}</div>
      {% editable article.body %}
    </div>
  </div>
</section>