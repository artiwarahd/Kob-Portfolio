Globals = {
    animateAppear: function(selector, direction){
        $(selector).toggle('slide', {
            direction: direction
        }, 500);
    },
    init: function(){
        // Use with jQuery waypoints
        // https://github.com/imakewebthings/jquery-waypoints
        // Globals.animateAppear(".left", "left");
        // Globals.animateAppear(".right", "right");
    }
};

$(Globals.init);