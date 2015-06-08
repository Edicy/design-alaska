;(function($) {
  // Remove comments if debouncing is used.
  // Function to limit the rate at which a function can fire.
  // var debounce = function(func, wait, immediate) {
  //   var timeout;
  //   return function() {
  //     var context = this, args = arguments;
  //     var later = function() {
  //       timeout = null;
  //       if (!immediate) func.apply(context, args);
  //     };
  //     var callNow = immediate && !timeout;
  //     clearTimeout(timeout);
  //     timeout = setTimeout(later, wait);
  //     if (callNow) func.apply(context, args);
  //   };
  // };

  var toggleMainMenu = function() {
    $('.js-menu-btn').click(function() {
      $(this).toggleClass('open');
      $('.js-menu-main').toggleClass('expanded');
    });
  };

  var toggleLangMenu = function() {
    $('.js-menu-lang-btn').click(function(event) {
      event.stopPropagation();
      $('.js-menu-lang-popover').toggleClass('expanded');
    });
  };

  var handlePopoverMenuHide = function() {
    $('html').click(function() {
      if ($('.js-menu-lang-popover').hasClass('expanded')) {
        $('.js-menu-lang-popover').removeClass('expanded');
      }
    });
  };

  var handleFormFieldClick = function() {
    $('.form_field_with_errors').click(function() {
      $(this).removeClass('form_field_with_errors');
    });
  };

  var focusCommentsWithErrors = function() {
    $(document).ready(function() {
      if ($('.comment-form').hasClass('form_with_errors') === true) {
        $('html, body').scrollTop($('.comment-form').offset().top);
      }
    });
  };

  var wrapTables = function() {
    $('.content-formatted table').wrap('<div class="table-container overthrow"></div>');
  };

  var handleWindowResize = function() {
      // Add functions that should be trgiggered while resizing the window here.
      // Example:
      // $(window).resize(debounce(yourFunctionName, 3000));
    };

    var getNewArticleURL = function() {
      newArticleUrl = $('.js-post-add-btn').find('.edy-site-menu-add').attr('href');
      $('.js-post-add').attr('href', newArticleUrl);
    };

    // Initiations
    var initBlogPage = function() {
    };

    var initBlogPageEditmode = function() {
      getNewArticleURL();
    };

    var initArticlePage = function() {
      handleFormFieldClick();
      focusCommentsWithErrors();
    };

    var init = function() {
      toggleMainMenu();
      toggleLangMenu();
      handlePopoverMenuHide();
      handleWindowResize();
      wrapTables();
    };

    window.site = $.extend(window.site || {}, {
      initBlogPage: initBlogPage,
      initBlogPageEditmode: initBlogPageEditmode,
      initArticlePage: initArticlePage,
      handleFormFieldClick: handleFormFieldClick
    });

    init();
  })(jQuery);
