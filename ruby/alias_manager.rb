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
p name

# First/last name switch
name[0], name[1] = name[1], name[0]

# NESTED ARRAYS
name[0] = name[0].split("").each{|letter| letter.next!}.join
name[1] = name[1].split("").each{|letter| letter.next!}.join

p name.join(" ")

# I need to break the "name" string into an array of individual letters

	# def index_up(letter)

	# 	vowels = "aeiou"
	# 	consonants = "bcdfghjklmnpqrstvwxyz"

	# 	case letter
	# 	when vowel
	# 		vowel[index] = vowel[index].next
	# 	when consonants
	# 		consonants[index] = consonants[index].next
	# 	end

	# end

# p name[0].split("").each{|letter| letter.next!}
# p name[1].split("").each{|letter| letter.next!}
# .scan
# .gsub


# Next I need to see if there's methods to differentiate between vowels and consonants
# If there is I can just run that on the array
# Otherwise I need to figureout a flow that serparates the two

# I need each vowel and consonant to index +1, probably just within a block on the .next method

# Last step is some reassembly of the array into a string with the .join method
