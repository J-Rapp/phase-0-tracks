# I'm coding a program that takes a spy's real name and converts it into an alias
# I am supposed to meet three criteria:
	# 1) The first and last names must be switched
	# 2) Every consonant must index +1
	# 3) Every vowel must index +1

# I had a bunch of messy pseudocode where I was asking a lot of questions etc...
# As I found those answers, my pseudocode got messier and very difficult to organize
# So all my pseudocode is now cleanly re-written, albiet more explanatory than stream-of-conciousness

# Before driver code, I need to create a method that takes a letter,
# checks for vowel/consonant, indexes up respectively, and checks for 
# edge cases like capital letters, 'Z', etc.

# To my knowledge, I don't think a built-in method like this exists...
# In my research, it looks like it might be possible putting this method's logic
# into the block, but I think it requires knowledge beyond what I know right now...
# Potential research: 
# I don't entirely understand it, but ".gsub" looks like a decent sub for this entire method
# What is "regexp" and how does it work in blocks like ".gsub"?

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

# Driver code

puts "Enter first and last name, or type \"quit\" when finished."
loop_done = false # Initial loop state
name_hash = {} # Hash will be the easiest way to store name/codename as key/value
until loop_done
	name = gets.chomp
	if name.downcase == "quit"
		loop_done = true
	else
		codename = name.split.rotate.map!{|word|word.split("").map!{|letter|index_up(letter)}.join}.join(" ")
		puts "Alias: \"#{codename}\""
		name_hash.store("#{name}","#{codename}") # Add a key/value into the hash each loop
	end
end
name_hash.each{|key,value|puts"#{key} also goes by \"#{value}\""} # Print every key/value

# How each bit of syntax works on line 61:
# 1) ".split" - Creates array containing first and last name strings
# 2) ".rotate" - Works as my first/last name switch since there's only two array objects 
# 3) ".map!" - Iterates through the word array and changes the values according to the following block
# 4) "{|word|word.split("")" - Breaks each name string into nested arrays of individual letters
# 5) ".map!" - Iterates through each letter array and changes the values according to the following block
# 6) "{|letter|index_up(letter)}" - Block calling the index_up method above on each letter
		# I think I could smush the entire method using .gsub and {regexp magic}, but I'm not that smart yet?
# 7) ".join}" - Rejoins the letter arrays into name strings
# 8) ".join(" ")" - Rejoins the word array into a string, honoring the space
