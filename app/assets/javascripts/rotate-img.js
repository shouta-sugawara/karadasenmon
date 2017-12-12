
$(function(){
    $('#top-img .images img:gt(0)').hide();
    setInterval(function(){
      $('#top-img .images :first-child').fadeOut(3000)
         .next('img').fadeIn(3000)
         .end().appendTo('#top-img .images');},
      6000);
});
