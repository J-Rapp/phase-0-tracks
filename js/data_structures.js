// Release 1

var colorArray = ["fuschia", "aqua", "magenta", "black"];
var nameArray = ["Ed", "Absolute Bullet Proof", "Airborn Magic", "Ali Baba"];

console.log(colorArray);
console.log(nameArray);


var horseAndColor = {}
for (var i = 0; i < colorArray.length; i++){
	horseAndColor[nameArray[i]] = colorArray[i];
}

console.log(horseAndColor)

// Release 2

function Car(make, model, mileage) {
	this.make = make;
	this.model = model;
	this.runs = true;
	this.mileage = mileage;


	this.honk = function() {
		console.log("*beep beep*");
	};

	this.breaks = function() {
		this.runs = false;
	};
};

var newCar = new Car("Chevy", "Cavalier", 180000);
console.log(newCar);
newCar.mileage = 160000;
console.log(newCar.mileage);
newCar.honk();
console.log(newCar.runs);
newCar.breaks();
console.log(newCar.runs);

var anotherCar = new Car("Honda", "Civic", 178000);
anotherCar["spaces in here"] = "does this work?";
console.log(anotherCar);
anotherCar.mileage = 160000;
console.log(anotherCar.mileage);
anotherCar.honk();
console.log(anotherCar.runs);
anotherCar.breaks();
console.log(anotherCar.runs);
console.log(anotherCar['spaces in here']);

// Release 3

// iterating through the object:

for (var property in anotherCar) {
    if (anotherCar.hasOwnProperty(property)) {
        console.log("property: " + property + " value: " + anotherCar[property])

    }
}

// there's also object.keys() ?? returns and array keys/properties?



