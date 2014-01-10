<!DOCTYPE html>
<html lang="et">
<head>
  {% include "html-head" %}
  {% stylesheet_link "edicyThumbEditor.css" %}
  <style>
    .thumb-editor-wrapper {
      width: 235px;
      height: 235px;
    }
  </style>
</head>

<body>
  <section class="site-content cfx">
    {% include "site-header" %}

    <main class="page-content cfx" role="main">
      <article class="featured-content">
      
        <header class="content-slogan">
          <h2 class="content-title">This family house stands amongst dense pine trees on the outskirts of Alaska</h2>
        </header>
        
        {% include "page-custom-gallery" %}
        
      </article>

      <section class="content-slogan">
        <h2 class="content-title">For fishing with bait, crabs, small fish and cut bait all work very well.</h2>
      </section>

      <section class="latest-posts wrap">
        <div class="latest-posts-col">
          <article class="post">
            <header class="post-header">
              <img class="post-thumb" src="{{ photos_path }}/dummy-0.jpg">
              <h3 class="post-title">Active mermaid fishing on lake Abyss</h3>
            </header>
            <div class="post-excerpt">A part of the Glacier Bay National Park and Preserve, its water is regularly.</div>
          </article>
  
          <article class="post">
            <header class="post-header">
              <img class="post-thumb" src="{{ photos_path }}/dummy-1.jpg">
              <h3 class="post-title">Fishing from a boat in easy sight</h3>
            </header>
            <div class="post-excerpt">Anglers either use an uptide rod between 9 and 10 feet in length to cast from the boat.</div>
          </article>
        </div>

        <div class="latest-posts-col">
          <article class="post">
            <header class="post-header">
              <img class="post-thumb" src="{{ photos_path }}/dummy-2.jpg">
              <h3 class="post-title">An angler in a float tube plays a pike.</h3>
            </header>
            <div class="post-excerpt">Though they differ in design and are expensive to build and maintain.</div>
          </article>
  
          <article class="post">
            <header class="post-header">
              <img class="post-thumb" src="{{ photos_path }}/dummy-3.jpg">
              <h3 class="post-title">Deep sea fishing from a boat in the Gulf </h3>
            </header>
            <div class="post-excerpt">Offshore game fish, like marlin and tuna, can be very large and heavy tackle is needed.</div>
          </article>
        </div>
      </section>
    </main>

    {% include "site-footer" %}
  </section>

  {% include "javascripts" %}
  <script>project.initFrontPage();</script>
  
  <script src="{{ javascripts_path }}/edicy.customFields.js"></script>
  <script src="{{ javascripts_path }}/edicy.imgDropArea.js"></script>
  {% if editmode%}
    <script>
      var pageData = new CustomField({
        type: "page",
        id: {{ page.id }}
      });
      
      $('#thumb-wrapper-main').imgDropArea({
        "dataObj": pageData,
        "dataKey": "cover_image"
      });
      
      thumbWrapperCount = 1;
      thumbWrapper = $('#thumb-wrapper-main').html();
      
      $('#add-thumb-editor').click(function() {
        thumbWrapperCount = thumbWrapperCount + 1;
        //console.log(thumbWrapperCount);
        //console.log($('.js-thumb-wrapper').length);
        
        thumbWrapperId = 'thumb-wrapper-' + thumbWrapperCount;
        console.log(thumbWrapperId);
        
        $('.custom-gallery .wrap .small-thumbs').append('<div id="' + thumbWrapperId + '" class="cover-image thumb-editor-wrapper js-thumb-wrapper{% if page.data.cover_image_2 != empty and page.data.cover_image_2 != '' and page.data.cover_image_2.src != "" %} active{% endif %}"><div class="delete-btn"><span class="edy-ico edy-ico-close"></span></div><div class="thumb-editor js-thumb-editor ui-droppable" style="width: 100%; height: 100%;">{% if page.data.cover_image_2 != empty and page.data.cover_image_2 != '' and page.data.cover_image_2.src != "" %}<img src="{{ page.data.cover_image_2.src }}" class="inner-image"/>{% endif %}<span class="thumb-placeholder">Drag cover image for this post here.</span></div></div>');
        
        $(thumbWrapperId).imgDropArea({
          "dataObj": pageData,
          "dataKey": "cover_image_" + thumbWrapperCount
        });
        
      });
      
      
    </script>
  {% endif %}
</body>
</html>