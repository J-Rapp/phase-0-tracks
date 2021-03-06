// JS notes from releases 0 - 3

// Syntax:
// two forward slashes = comments
// all code lines end with a semicolon, `;`
// variables are first declared using `var`
// variable naming convention is no underscores, istead using caps
// after var is declared, value can be changed using `variableName = new value`
// "nil" from Ruby is "null" in JS
// terminal output is `console.log(contentToBePrinted)`
	// So, printing a variable
	// var thisVariable = "A string of stuff"
	// console.log("This value is " + thisVariable)
	// result "This value is A string of stuff"
// you don't need to use interpolation `#{}` like in Ruby

// if/else conditions are now in parentheses
	// if (stuff && stuff)
// `elsif` in Ruby is now `else if` in JS
// If the conditions are met, executed code is now surrounded by curly brackets
	// if (this suff) {
	//		this stuff happens;
	// } else if (that stuff) {
	//      that thing happens;
	// } else {
	//		some more stuff;
	// }

// functions/methods:
// `function` takes the place of `def`
// NO IMPLICIT RETURNS with JS, must declare `return` in function
// executed code surrounded by curly brackets
// each line of executed code ends with semicolon
// functions need parentheses for parameters regardless if it takes arguments
// when calling the function, `console.log` instead of `puts`, include parentheses no matter
	// function add(x, y) {
	//   return x + y;
	// }
	//
	// function sayHello() {
    //   console.log("Hello!");
	// }
	//
	// console.log(add(5,3));
	// sayHello();

// Looping
// Instead of `.each` with a block following, we use `for` in JS
// `for` is followed by some parameters in parentheses, separated inside by semicolons
	// var str = "Some stuff"
	// for (var i = 0; i < str.length; i++) {
	// 		console.log(str[i]);
	// }
	//
	// for (i = 1; i <= 10; i++){
	//		console.log(i);
	// }
	//
	// for (i = 10; i > 0; i--){
	// 		console.log(i);
	// }

// Release 4:

// Pseudocode:
// function: reverse the characters of a string
// input: a word or phrase
// steps:
	// Set an empty container for our new word or phrase
	// find the length of the word/number of characters
	// grab the last character from the word or phrase, and place it as the first character in a new word or phrase
	// reduce "cursor" place by one on old word or phrase, repeat placement on new word or phrase
	// return new word or phrase
// output: a new word or phrase

function reverseChar(input) {
	var newString = ""
	for (var i = (input.length - 1); i >= 0; i--){
		var letter = (input[i]);
		newString = newString + letter;
	}
	return newString
}

console.log(reverseChar("whaddup"))
console.log(reverseChar("A big long phrase"))
console.log(reverseChar("hello!"))

var reversedVariable = reverseChar("I'M WALKIN' HERE!")
if (1 === 1){
	console.log(reversedVariable);
} else {
	console.log(reverseChar("ymmud"));
}

