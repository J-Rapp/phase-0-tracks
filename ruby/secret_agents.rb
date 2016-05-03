# Amy Plant and Jake Rapp
# Encryption password
# User inputs password
# For every letter in the password, it will get switched out with the next letter in the alphabet


def encrypt(password)

	index = 0
	# loop that advances to the next index and changes it to the next character (.next)
	while index < password.length
		# check if the letter is "z" and make it an "a"
		if password[index] == "z"
			password[index] = "a"
		else
			password[index] = password[index].next
		end
		index += 1
	end
	return password

end


# Decryption method

def decrypt(password)

	i = 0
	alpha = "abcdefghijklmnopqrstuvwxyz"

	while i < password.length
		new_index = alpha.index(password[i]) - 1
		password[i] = alpha[new_index]
		i += 1
	end

	return password
end

# Driver code

# Ask the user to if they want to encrypt or decrypt

puts "Would you like to encrypt or decrypt?"
answer = gets.chomp[0].downcase

# Ask them for the password

puts "What is your password?"
password = gets.chomp

# Print their results, nicely

	if answer == "e"
		puts "Your excrypted password is #{encrypt(password)}"
	elsif answer == "d"
		puts "Your decrytped password is #{decrypt(password)}"
	else
		puts "I didn't understand if you wanted it encrypted or decrypted."
	end
