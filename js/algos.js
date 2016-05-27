// FUNCTION CODE:

// Release 0

// Create a function that returns the longest string in an array
// input: an array
// ideas for steps (in no specific order): 
//		loop trough the array
// 		have that something also measure the length of each object in the array
// 		stores value as "greatest"
//		checks if next value is greater than the last
// 		if it's bigger, overwrites that index
//      optional step - if there is a tie, print both values
// output: an array of string(s)

function longestString(array){
	var longestStringLength = 0;
	var longestStringIndex = 0;
	// var longestStringsArray = [];
	for (var arrayIndex = 0; arrayIndex < array.length; arrayIndex++){
		if (array[arrayIndex].length > longestStringLength) {
			longestStringIndex = arrayIndex;
			longestStringLength = array[arrayIndex].length;
		} // else if (array[arrayIndex].length == longestStringLength){ figure out a way to store both } 
		else {
		}
	}
	return array[longestStringIndex]; // or longestStringsArray if two objects are equal length
}

// Release 1

// create a function that checks if two objects share a key/value pair
// input: two objects
// ideas for steps (in no specific order): 
//		loop through the properties of one of the two objects
//		using that property, check to see if the other object has it and if the value is the same
// output: true or false

function objectMatcher(object1, object2){
	var match = false;
	for (var property in object1) {
		if (object1[property]==object2[property]) {
			match = true;
		}
	}
	return match
}

// Release 2
// input: an integer
// ideas for steps (in no specific order):
//		integer sets loop number
//		each loop
//			generates number
//			transform to letters
//			store in array
// output: an array

function wordMaker(number) {
	wordArray = []
	for (number; number > 0; number--) {
		wordArray.push(number)
	}
	return wordArray
}


// // DRIVER CODE

// // Release 0

// var testArray1 = ["tubas", "bears", "corvettes", "hyenas"];
// console.log(longestString(testArray1))
// var testArray2 = ["a", "did you know?", "well hey there", "surprise"]
// console.log(longestString(testArray2))

// // Release 1

// // "TRUE" outcome
// var baby = {
// 	age: 1,
// 	basicallyDrunk: "yes",
// 	cirrhosis: false,
// }
// var drunkPerson = {
// 	age: 56,
// 	"basicallyDrunk": "yes",
// 	cirrhosis: true,
// }
// console.log(objectMatcher(baby, drunkPerson));

// // "FALSE" outcome
// var animal = {
// 	mineral: false,
// 	distinct: "true" // when referencing Object[property], data type apparently matters.
// }

// var mineral = {
// 	animal: false,
// 	distinct: true
// }
// console.log(objectMatcher(animal, mineral));

// Release 2

console.log(wordMaker(3))



