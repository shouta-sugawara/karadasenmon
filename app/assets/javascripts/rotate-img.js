
$(function(){
    $('#top-img .images img:gt(0)').hide();
    $('#top-img .messages .message:gt(0)').hide();
    setInterval(function(){
      $('#top-img .images :first-child').fadeOut(3000)
         .next('img').fadeIn(3000)
         .end().appendTo('#top-img .images');
      $('#top-img .messages .message:eq(0)').fadeOut(3000)
         .next('.message').fadeIn(3000)
         .end().appendTo('#top-img .messages');
       },
      6000);
});
