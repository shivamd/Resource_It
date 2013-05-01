(function() {
		var text;
    if (window.getSelection) {
        text = window.getSelection().toString();
    } else if (document.selection && document.selection.type != 'Control') {
        text = document.selection.createRange().text;
    }
    // .attr('data-bookmarklet-token')
    var token = $('[data-bookmarklet-token]').attr('data-bookmarklet-token');
    $.get('http://127.0.0.1:3000/snippets?content='+encodeURIComponent(text)+'&token='+encodeURIComponent(token), function(data) {
    	alert("Successfully created snippet")
    })

})()

