# I'm coding a program that takes a spy's real name and converts it into an alias
# I am supposed to meet three criteria:
	# 1) The first and last names must be switched
	# 2) Every consonant must index +1
	# 3) Every vowel must index +1


# First I'll take input from the user
# At some point I need to diffentiate between first and last so they can be switched...
# Should I ask for First/Last seperately, or figure out a way to break into two arrays at the space? would .split(" ") work? I'll try..

puts "What is your first and last name?"
# Create an array of the first and name name as two strings
name = gets.chomp.split
# I was trying a long chain like this:
# name = gets.chomp.split.each{ |word| word.split("").each{ |letter| index_up(letter) }.join}
# this first ".each" method was turning the class to Enumerator instead of String,
# So the parameters of the block weren't seeing a String for the next "word.split" method

p name

# First/last name switch
name[0], name[1] = name[1], name[0]

# A method that takes a single letter string, checks for vowel/consonant, indexes up respectively, and checks for edge cases like caps letters, 'Z', etc

	def index_up(letter)

		vowel = "aeiou"
		consonant = "bcdfghjklmnpqrstvwxyz"

		if letter == "z"
			letter = "b"
		elsif letter == "Z"
			letter = "B"
		elsif letter == "u"
			letter = "a"
		elsif letter == "U"
			letter = "A"	
		elsif letter.downcase == vowel.include?letter
			letter = vowel.index(letter).next
		else letter.downcase == vowel.include?consonant
			letter = consonant.index(letter).next
		end

	end

# NESTED ARRAYS and calling the indexing method
name[0] = name[0].split("").each{ |letter| index_up(letter) }.join
name[1] = name[1].split("").each{ |letter| index_up(letter) }.join

p name.join(" ")





# .scan
# .gsub


# Next I need to see if there's methods to differentiate between vowels and consonants
# If there is I can just run that on the array
# Otherwise I need to figureout a flow that separates the two

# I need each vowel and consonant to index +1, probably just within a block on the .next method

# Last step is some reassembly of the array into a string with the .join method
