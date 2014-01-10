<section class="custom-gallery">
  {% if editmode %}
    <div class="wrap cfx">
      <div class="small-thumbs">
      
        <div id="thumb-wrapper-main" class="cover-image thumb-editor-wrapper js-thumb-wrapper{% if page.data.cover_image != empty and page.data.cover_image != '' and page.data.cover_image.src != "" %} active{% endif %}">
          <div class="delete-btn">
            <span class="edy-ico edy-ico-close"></span>
          </div>
          <div class="thumb-editor js-thumb-editor" style="width: 100%; height: 100%;">
            {% if page.data.cover_image != empty and page.data.cover_image != '' and page.data.cover_image.src != "" %}<img src="{{ page.data.cover_image.src }}" class="inner-image"/>{% endif %}
            <span class="thumb-placeholder">
              Drag cover image for this post here.
            </span>
          </div>
        </div>
        
        <div id="thumb-wrapper-2" class="cover-image thumb-editor-wrapper js-thumb-wrapper{% if page.data.cover_image_2 != empty and page.data.cover_image_2 != '' and page.data.cover_image_2.src != "" %} active{% endif %}">
          <div class="delete-btn">
            <span class="edy-ico edy-ico-close"></span>
          </div>
          <div class="thumb-editor js-thumb-editor" style="width: 100%; height: 100%;">
            {% if page.data.cover_image_2 != empty and page.data.cover_image_2 != '' and page.data.cover_image_2.src != "" %}<img src="{{ page.data.cover_image_2.src }}" class="inner-image"/>{% endif %}
            <span class="thumb-placeholder">
              Drag cover image for this post here.
            </span>
          </div>
        </div>

        
      </div>
      <div class="large-thumb">
      </div>
      <div class="bottom-thumbs">
      </div>
      <button id="add-thumb-editor">Add image</button>
    </div>
    {{ page.data.cover_image_2.src }}
    {% else %}
      <div class="wrap cfx">
        <div class="small-thumbs">
          <div class="custom-image" style="background: url('{{ page.data.cover_image.src }}'); background-size: cover;"></div>
          <div class="custom-image" style="background: url('{{ photos_path }}/dummy-1.jpg'); background-size: cover;"></div>
          <div class="custom-image" style="background: url('{{ photos_path }}/dummy-2.jpg'); background-size: cover;"></div>
          <div class="custom-image" style="background: url('{{ photos_path }}/dummy-3.jpg'); background-size: cover;"></div>
        </div>
        <div class="large-thumb">
          <div class="custom-image" style="background: url('{{ photos_path }}/dummy-4.jpg'); background-size: cover;"></div>
        </div>
        <div class="bottom-thumbs">
          <div class="custom-image" style="background: url('{{ photos_path }}/dummy-5.jpg'); background-size: cover;"></div>
          <div class="custom-image" style="background: url('{{ photos_path }}/dummy-6.jpg'); background-size: cover;"></div>
          <div class="custom-image" style="background: url('{{ photos_path }}/dummy-7.jpg'); background-size: cover;"></div>
          <div class="custom-image" style="background: url('{{ photos_path }}/dummy-8.jpg'); background-size: cover;"></div>
        </div>
      </div>
    {% endif %}
</section>