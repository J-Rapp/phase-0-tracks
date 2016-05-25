// Create a function that returns the longest string in an array
// input: an array
// ideas for steps (in no specific order): 
//		loop trough the array
// 		have that something also measure the length of each object in the array
// 		stores value as "greatest"
//		checks if next value is greater than the last
// 		if it's bigger, overwrites that index
// output: an array of string(s)

function longestString(array){
	var longestStringLength = 0;
	var longestStringIndex = 0;
	var longestStringArray = [];
	for (var arrayIndex = 0; arrayIndex < array.length; arrayIndex++){
		if (array[arrayIndex].length >= longestStringLength) {
			longestStringIndex = arrayIndex;
			longestStringLength = array[arrayIndex].length;
		} else {
		}
	}
	return longestStringArray;
}

var testArray = ["tubas", "bears", "corvettes", "hyenas"]
console.log(longestString(testArray))