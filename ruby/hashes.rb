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

# Goal of this is to create a Ruby program that collects input from the user (in this case an interior designer) and organizes that data into a hash that can be altered if needed.
# They need to be able to enter the following details about their client:
# Name, Age, Number of children, decor theme, and anything other inputs that will give me a good combo of string, integer, and Boolean values.
# Keys should be symbols, unless a string is needed for some reason

# First, I need to prompt the user for data input and convert that into usable data in the hash.
# Strings and integer conversion methods already exist, but I'll make a simple monkey patch method to convert to Boolean

def to_boolean(x)
	if x == "y"
		return true
	else
		return false
	end
end

# I also need to initiate the empty hash before adding the inputs to it.

client_profile = {}

# Now on to the "driver code"

puts "What is the client's name?"
client_profile[:name] = gets.chomp
# I can efficiently assign the "gets.chomp" inputs as values that automatically populate hash keys

puts "What is the client's age?"
client_profile[:age] = gets.chomp.to_i

puts "How many children does the client have?"
client_profile[:kids] = gets.chomp.to_i

puts "What is the client's decor theme?"
client_profile[:decor] = gets.chomp

puts "Does the client like crazy patterns? (y/n)"
client_profile[:crazy] = to_boolean(gets.chomp[0].downcase)
# A downcased zero index for the string should produce "y" or "n"

puts "Does the client like minimalism? (y/n)"
client_profile[:minimalism] = to_boolean(gets.chomp[0].downcase)

# Print the hash back out upon completing the input program.

puts client_profile

# Give the opportunity to update the value of a key if needed, or 'none' if no changes are needed. For the purpose of the assignment, I can assume that the user will input a correct/pre-existing key when prompted - no need to check for errors.

puts "Input a key you would like to change, or type 'none' if no changes are needed."

# Set up a state for the loop to change
changes_made = false

until changes_made
	key_shift = gets.chomp.downcase
	case key_shift
		when "name", "age", "kids", "decor", "crazy", "minimalism"
			# stuff happens to change value
		when "none"
			changes_made = true
		else
			puts "Sorry, come again?"
	end
end

# Idea) ask what key, then what value, put those in a new temporary hash, use #.update to merge the new hash
# Idea) explore the string ID hint in the release
# Idea) new variable key = ":" + gets.chomp, then plug that in client_profile[key] = gets.chomp
# Idea) Use block knowledge from 5.4, something like - client_profile.update(client_profile) { |key, value1| value1 }
# Idea) client_profile.values_at(user_input_key)


# Print the updated version of the hash and exit the program.

puts client_profile
