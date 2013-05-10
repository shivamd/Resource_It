
$(document).ready(function(){
  $('small').click(function(e){
  	e.preventDefault();
  	$(this).parent().hide();
  	$(this).parent().siblings('div').show();
  	})
});

