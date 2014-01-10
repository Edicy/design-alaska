(function($) {
    var defaults = {
        useOriginalImage: true
    };
    
    var ImgDropArea = function($el, options) {
        this.options = $.extend(defaults, options);
        this.dataObj = options.dataObj;
        this.dataKey = options.dataKey;
        this.$el = $el;
        this.data = null;
        if (window.Edicy && window.Edicy.jQuery) {
            this.init();
        } else {
            $(document).ready($.proxy(function(){
                this.init();
            }, this));
        }
    };
    
    ImgDropArea.prototype = {
        init: function() {
        
          Edicy.jQuery(this.$el.find('.js-thumb-editor').get(0)).droppable({
              scope: 'thumb', 
              tolerance: 'pointer'
          }).on({
              'dropover': $.proxy(this.handleDropover, this),
              'dropout': $.proxy(this.handleDropout, this),
              'drop': $.proxy(this.handleDrop, this)
          });
          this.$el.find('.delete-btn').on('click', $.proxy(this.handleDelete, this));
        },
        
        handleDelete: function() {
            this.dataObj.remove(this.dataKey, {
                "success": $.proxy(function() {
                    this.$el.find('.inner-image').remove();
                    this.$el.removeClass('active'); 
                }, this)
            });
        },
        
        handleDrop: function(event, ui) {
            this.$el.removeClass('over');
            if (ui.helper.data('model')) {
                var model = ui.helper.data('model');
                if (model.isImage()) {
                    this.data = {
                        "src": model.get((this.options.useOriginalImage) ? 'src' : 'large_thumbnail_src'),
                        "width": model.get('width'),
                        "height": model.get('height')
                    } 
                    //console.log(this.data);
                    this.changeImage();
                }
            }
        },
        
        handleDropover: function() {
            this.$el.addClass('over');
        },
        
        handleDropout: function() {
            this.$el.removeClass('over');
        },
        
        changeImage: function() {
            this.dataObj.set(this.dataKey, this.data, {
                "success": $.proxy(function(data) {
                    //console.log(data);
                    this.data = data[this.dataKey];
                    var $img = $('<img/>', {'src': this.data.src, 'class':"inner-image"});
                    if (this.$el.find('.inner-image').length > 0) {
                        this.$el.find('.inner-image').remove();
                    }
                    this.$el.addClass('active');
                    this.$el.find('.js-thumb-editor').prepend($img);
                }, this)
            });
        }
    };
    
    $.fn.imgDropArea = function (options) {
      var $e = this.eq(0),
          data = $e.data('edicyImgDropArea');
      if (!data) {
          $e.data('edicyImgDropArea', new ImgDropArea($e, options));
      }
      
      return $e;
    };
  
})(jQuery);