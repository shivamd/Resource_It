alert(function() {
		var text;
    if (window.getSelection) {
        text = window.getSelection().toString();
    } else if (document.selection && document.selection.type != 'Control') {
        text = document.selection.createRange().text;
    }
    $.get('/snippets?content='+text+'', function(data) {
    	alert("Successfully created snippet")
    })

}())

