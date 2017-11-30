
function init() {
  var px_change = 40;
  window.addEventListener('scroll', function(e) {
    if ( $(window).scrollTop() > px_change) {
      $("#header").addClass("smaller");
    } else if ( $("#header").hasClass("smaller") ) {
      $("#header").removeClass("smaller");
    }
  });
}
window.onload = init();

$(function(){
	$(".nav_icon").on("click", function() {
		$(this).toggleClass("active");
		$("nav ul").slideToggle();
	});

  $(window).resize(function(){
		var w = $(window).width();
		var h = $(window).height();
		var x = 768;
		if (w >= x) {
			$('nav ul').css({ display: 'flex',height: 'auto' });
		}else {
      if ( !$(".nav_icon").hasClass("active") ) {
        $('nav ul').css({ display: 'none',height: 'auto'});
      }
		}
	});
});
