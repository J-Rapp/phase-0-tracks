# I'm coding a program that takes a spy's real name and converts it into an alias
# I am supposed to meet three criteria:
	# 1) The first and last names must be switched
	# 2) Every consonant must index +1
	# 3) Every vowel must index +1

# I had a bunch of messy pseudocode where I was asking a lot of questions etc...
# As I found those answers, my pseudocode got messier and very difficult to organize
# So all my pseudocode is now cleanly re-written, albiet more explanatory than stream-of-conciousness

# Before driver code, I need to create a method that takes a single letter string,
# checks for vowel/consonant, indexes up respectively, and checks for 
# edge cases like caps letters, 'Z', etc.

# To my knowledge, I don't think a built-in method like this exists...
# In my research, it looks like it might be possible putting this method's logic
# into the block, but I think it requires knowledge beyond what I know right now...
# Potential research: what is "regexp" and how does it work in blocks?

def index_up(letter)
	vowel = "aeiou".split("")
	vowel_up = "AEIOU".split("")
	consonant = "bcdfghjklmnpqrstvwxyz".split("")
	consonant_up = "BCDFGHJKLMNPQRSTVWXYZ".split("")
	# the .split("") method breaks the string into an array of single letters
	if letter == "z"
		letter = "b"
	elsif letter == "Z"
		letter = "B"
	elsif letter == "u"
		letter = "a"
	elsif letter == "U"
		letter = "A"
	elsif vowel_up.include?(letter)
	# call .include? with the letter as the object for comparison
		letter = vowel_up[vowel_up.index(letter).next]
		# Getting the next letter's index in the respective array, and changing the value of "letter"
	elsif consonant_up.include?(letter)
		letter = consonant_up[consonant_up.index(letter).next]
	elsif vowel.include?(letter)
		letter = vowel[vowel.index(letter).next]
	elsif consonant.include?(letter)
		letter = consonant[consonant.index(letter).next]
	else
		puts ""
	end
end

# To my surprise, I am able to immediately execute the alias when the user inputs data.
# I'll explain...

puts "What is your first and last name?"

name = gets.chomp.split.rotate.map!{|word| word.split("").map!{|letter|index_up(letter)}.join}.join(" ")

# How each bit of syntax works:

# 1) "gets.chomp" - Gets string input from user

# 2) ".split" - Creates array containing first and last name strings

# 3) ".rotate" - Works as my first/last name switch since there's only two array objects 
# I'm basically doing "name[0], name[1] = name[1], name[0]""
# I don't need ".rotate!" because I'll be calling some bang operators in a second...

# 4) ".map!" - Iterates through the word array and changes the values according to the following block

# 5) "{|word|word.split("")" - Breaks each name string into nested arrays of individual letters

# 6) ".map!" - Iterates through each letter array and changes the values according to the following block

# 7) "{|letter|index_up(letter)}" block calling the index_up method above on each letter
# A BLOCK WITHIN A BLOCK!? block-ception...

# 8) ".join}" rejoins the letter arrays into name strings

# 9) ".join(" ")" rejoins the word array into a string, honoring the space.

p name

