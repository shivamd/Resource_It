function getAllElementsWithAttribute(attribute) {
  var matchingElements = [];
  var allElements = document.getElementsByTagName('*');
  for (var i = 0; i < allElements.length; i++) {
      if (allElements[i].getAttribute(attribute)) {
        matchingElements.push(allElements[i]);
      }
  }
  return matchingElements;
}

function loadXMLDoc(url) {
  var xmlhttp;
  if (window.XMLHttpRequest) {
    xmlhttp=new XMLHttpRequest();
  } else {
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
  xmlhttp.onreadystatechange=function() {
    // 4 means request in finished and response is readyx
    if (xmlhttp.readyState==4 && xmlhttp.status==200) {
      document.getElementsByTagName("body")[0].innerHTML=xmlhttp.responseText;
    }
  }
  xmlhttp.open("GET",url,true);
  xmlhttp.send();
}




(function() {
	var text;
    if (window.getSelection) {
        text = window.getSelection().toString();
    } else if (document.selection && document.selection.type != 'Control') {
        text = document.selection.createRange().text;
    }
    var tags = encodeURIComponent(prompt("Any categories for this snippet? e.g: funny inspirational code design", "snippet"));
    var token = getAllElementsWithAttribute('data-bookmarklet-token')[0].getAttribute('data-bookmarklet-token')
    loadXMLDoc('http://'+window.location.host+'/snippets?content='+encodeURIComponent(text)+'&token='+encodeURIComponent(token)+'&tags='+tags)
})()




