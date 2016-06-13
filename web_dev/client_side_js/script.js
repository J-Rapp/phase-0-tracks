console.log("Yo whaddup world");

function addPinkBorder(){
	var listEl = document.getElementsByTagName("li");
	for (var i=0; i<listEl.length; i++){
		listEl[i].style.border = "2px solid pink";
	}

	var paragraph = document.createElement("p");
	var textNodeTest = document.createTextNode("Not that scary I guess!");
	paragraph.appendChild(textNodeTest);

	var addOn = document.getElementById("secret");
	addOn.appendChild(paragraph);
};

var scaryButton = document.getElementById('scary');
scaryButton.addEventListener("click", addPinkBorder);