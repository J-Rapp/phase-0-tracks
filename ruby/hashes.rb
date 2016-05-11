# Release 2 questions (for my own reference/sake)

# 1) How do you delete a key-pair value? 
# hash_name.delete(key)

# 2) What happens if you try to access the value of a key that is not in the hash?
# It returns a value of 'nil'

# 3) Regarding the answer you got for the previous question, is there a way to set a different default return value when a key is not present in the hash?
# hash_name.default = "default_value"

# 4) How can you access just the keys of a hash? What data type does this method return?
# hash_name.keys - gets you an array!

# 5) How do you remove everything from the hash at once (returning an empty hash)?
# hash_name.clear

# 6) How can you access just the values of a hash?
# hash_name.values



# Release 3

# Goal of this is to create a Ruby program that collects input from the user (in this case an interior designer) and organizes that data into a hash.
# They need to be able to enter the following details about their client:
# Name, Age, Number of children, decor theme, and anything other inputs that will give me a good combo of string, integer, and Boolean values.
# Keys should be symbols, unless a string is needed for some reason

# First, we need to prompt the user for data input.

puts "What is the client's name?"

puts "What is the client's age?"

puts "How many children does the client have?"

puts "What is the client's decore theme?"

puts "Does the client like crazy patterns?"

puts "Does the client like minimalism"

# Next, we need to convert the input into useable data.



# Print the hash back out upon completing the input program.

puts client_profile

# Give the opportunity to update the value of a key if needed, or 'none' if no changes are needed. For the purpose of the assignment, we can assume that the user will input a correct/pre-existing key when prompted - no need to check for errors.

# Print the updated version of the hash and exit the program.
