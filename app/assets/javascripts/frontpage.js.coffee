$ ->
  $('small').click (e) ->
  	e.preventDefault()
  	$(@).parent().hide()
  	$(@).parent().siblings('div').show()
