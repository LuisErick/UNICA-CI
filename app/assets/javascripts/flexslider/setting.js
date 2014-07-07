var ready = function() {
    $('.flexslider').flexslider();
};

$(window).load(ready);
$(window).on('page:load', ready);