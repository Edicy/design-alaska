<section class="custom-gallery">
  {% if editmode %}
  {% else %}
    <div class="wrap cfx">
      <div class="custom-left">
        {% include "post-content" %}
      </div>
      <div class="custom-right">
        <div class="custom-image" style="background: url('{{ photos_path }}/dummy-4.jpg'); background-size: cover;"></div>
      </div>
      <div class="custom-bottom">
        <div class="custom-image" style="background: url('{{ photos_path }}/dummy-5.jpg'); background-size: cover;"></div>
        <div class="custom-image" style="background: url('{{ photos_path }}/dummy-6.jpg'); background-size: cover;"></div>
        <div class="custom-image" style="background: url('{{ photos_path }}/dummy-7.jpg'); background-size: cover;"></div>
        <div class="custom-image" style="background: url('{{ photos_path }}/dummy-8.jpg'); background-size: cover;"></div>
      </div>
    </div>
  {% endif %}
</section>