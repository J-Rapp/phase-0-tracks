// Create a function that returns the longest string in an array
// input: an array
// ideas for steps (in no specific order): 
//		loop trough the array
// 		have that something also measure the length of each object in the array
// 		stores value as "greatest"
//		checks if next value is greater than the last
// 		if it's bigger, overwrites that index
//      optional step - if there is a tie print both values
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

var testArray1 = ["tubas", "bears", "corvettes", "hyenas"];
console.log(longestString(testArray1))
var testArray2 = ["a", "did you know?", "well hey there", "surprise"]
console.log(longestString(testArray2))