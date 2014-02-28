Globals = {
  animateAppear: function(selector, direction){
    $(selector).toggle('slide', {
        direction: direction
    }, 500);
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
      return false;
    });

  }
};

$(Globals.init);