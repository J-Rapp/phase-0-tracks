console.log("Yo whaddup world");

var listEl = document.getElementsByTagName("li");

for (var i=0; i<listEl.length; i++){
	listEl[i].style.border = "1px dashed pink";
}