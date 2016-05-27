// // // FUNCTION CODE: // // //

// Release 0

// Create a function that returns the longest string in an array
// input: an array
// ideas for steps (in no specific order): 
//		loop trough the array
// 		have that something also measure the length of each object in the array
// 		stores value as "greatest"
//		checks if next value is greater than the last
// 		if it's bigger, overwrites that index
//      optional step - if there is a tie, print all equal-length strings
// output: array of one string or multiple

function longestString(array){
	var longestStringLength = 0;
	var longestStringsArray = [];
	for (var arrayIndex = 0; arrayIndex < array.length; arrayIndex++){
		if (array[arrayIndex].length > longestStringLength) {
			longestStringLength = array[arrayIndex].length;
			longestStringsArray = [];
			longestStringsArray.push(array[arrayIndex]);
		} else if (array[arrayIndex].length == longestStringLength) { 
			longestStringsArray.push(array[arrayIndex]);
		} else {
		}
	}
	return longestStringsArray;
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
// create a function that generates a specified number of words
// input: an integer
// ideas for steps (in no specific order):
//		integer sets loop number
//		each loop
//			generates whole number
//			create word (another loop?)
//			store in array
// output: an array

function wordMaker(arrayLength) {
	wordArray = []
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	for (arrayLength; arrayLength > 0; arrayLength--) {
		word = "";
		randLength = Math.round(Math.random() * 9) + 1
			for (randLength; randLength > 0; randLength--) {
				randLetter = alphabet.charAt(Math.floor(Math.random() * (alphabet.length - 1)));
				word = word + randLetter;
			}
		wordArray.push(word);
	}
	return wordArray
}


// // // DRIVER CODE // // //

// // Release 0

// var testArray1 = ["tubas", "bears", "corvettes", "hyenas"];
// console.log(longestString(testArray1))
// var testArray2 = ["a", "did you know?", "well hey there", "surprise"]
// console.log(longestString(testArray2))
// var testArray3 = ["hi", "hello", "beans"] // testing two same length
// console.log(longestString(testArray3))
// var testArray4 = ["hi", "hello", "beans", "smiles"] // testing two same length and then greater length
// console.log(longestString(testArray4))

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

// // Release 2

// console.log(wordMaker(3))
// console.log(wordMaker(6))
// console.log(wordMaker(9))

for (var times = 10; times > 0; times--) {
	array = (wordMaker(5))
	console.log("Array of five random length strings:")
	console.log(array)
	longest = longestString(array)
	console.log("Longest string(s): " + longest)
	console.log("")
}


