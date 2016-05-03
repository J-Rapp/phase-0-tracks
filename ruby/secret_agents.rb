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

p encrypt("googlez")

# Decryption method
