var ready = function() {
    $('.flexslider').flexslider();
};

$(window).load(ready);
$(window).on('page:load', ready);


function toogle(a,b,c)
{
  document.getElementById(b).style.display=a;
  document.getElementById(c).style.display=a;
}