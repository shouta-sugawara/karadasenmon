
$(function(){
    $('#top-img img:gt(0)').hide();
    setInterval(function(){
      $('#top-img :first-child').fadeOut(1000)
         .next('img').fadeIn(1000)
         .end().appendTo('#top-img');},
      4000);
});
