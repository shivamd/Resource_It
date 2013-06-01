$(document).ready(function(){
  $('small').click(function(e){
    e.preventDefault();
    $(this).parent().hide();
    $(this).parent().siblings('div').show();
  })
  $('body').on('mouseenter','a.bookmarklet', function(){
    $(this).text("SNIPP-ET"); 
  })
  $('body').on('mouseleave', 'a.bookmarklet', function(){
    setTimeout(function(){ $('a.bookmarklet').text("DRAG ME") }, 1000);
  })
});

