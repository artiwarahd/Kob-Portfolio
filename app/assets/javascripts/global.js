Globals = {
  animateAppear: function(selector, direction){
    $(selector).toggle('slide', {
        direction: direction
    }, 500);
  },
  loadStickyNav: function(){
    var stickyNavTop = $('#main-nav').offset().top;  

    var stickyNav = function(){  
      var scrollTop = $(window).scrollTop();  
             
      if (scrollTop > stickyNavTop) {   
        $('#main-nav').addClass('sticky');  
      } else {  
        $('#main-nav').removeClass('sticky');   
      }  
    };  
      
    stickyNav();  
      
    $(window).scroll(function() {  
      stickyNav();  
    });  
  },
  loadAboutMeNav: function(){
    var aboutMeNavTop = $('#about-me').offset().top;  

    var aboutMeNav = function(){  
      var scrollTop = $(window).scrollTop();  
             
      if (scrollTop > aboutMeNavTop) {   
        $('#main-nav').addClass('black-bg');  
      } else {  
        $('#main-nav').removeClass('black-bg');   
      }  
    };  
      
    aboutMeNav();  
      
    $(window).scroll(function() {  
      aboutMeNav();  
    });  
  },
  init: function(){
    // cache container
    var $container = $('#container');
    // initialize isotope
    $container.isotope({
      animationOptions: {
        duration: 750,
        easing: 'linear',
        queue: false
      }
    });

    // filter items when filter link is clicked
    $('#filters').find('a').click(function(){
      var selector = $(this).attr('data-option-value');
      $container.isotope({ 
        filter: selector,
        animationOptions: {
          duration: 750,
          easing: 'linear',
          queue: false
        } 
      });

      $('#filters').find('a.selected').removeClass("selected");
      $(this).addClass("selected");
      return false;
    });

    Globals.loadStickyNav();
    Globals.loadAboutMeNav();
  }
};

$(Globals.init);