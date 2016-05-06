#Release 1 just requires you to gather basic info about the "applicant".

puts "Thank you for applying to Werewolf, Inc."
puts "What is your name?"
	name = gets.chomp.to_s
puts "How old are you?"
	age = gets.chomp.to_i
puts "What year were you born? (yyyy)"
	year = gets.chomp.to_i
puts "Do you like garlic? (y/n)"
	garlic = gets.chomp[0].downcase
# The [0] index and .downcase will auto convert any input to a lowercase of the first letter.
puts "Will you be enrolling in health insurance? (y/n)"
	insurance = gets.chomp[0].downcase

# Release 2 requires some programming skillz to add some logic to all this.
# We're going to be calling on the && and || operators later on, which
# means we need all our data to be in Boolean (or at least truthy/falsey).

# First, let's make a method to check that their age matches their birth
# year, and then convert that to a Boolean value.

def age_test(y, a)
	current_year = Time.new.year
	if current_year - y == a
		return true
	# Let's also consider they might not have had their birthday yet this year.
	# Is there a way to condense this with the "if" above? A built in method perhaps?
	elsif current_year - y == (a + 1)
		return true
	else
		return false
	end
end

# Next, let's make a method to convert garlic and insurance preferences into Booleans.

def yn_to_boolean(input)
	if input == "y"
		return true
	elsif input == "n"
		return false
	else
		# Let's catch any other answer like "maybe" and not take our chances with vampires
		return false
	end
end

# Time to call the methods to give us usuable data in new variables.

correct_age = age_test(year, age)
garlic_b = yn_to_boolean(garlic)
insurance_b = yn_to_boolean(insurance)

# Now that we have Boolean values for our inputs, it's time for the logic bits!
# Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
# I put this on top so that it took precedence over evaluating the other information.
	if name == "Drake Cula"
		p "Definitely a vampire."
	elsif name == "Tu Fang"
		p "Definitely a vampire."
# If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
	elsif correct_age && (garlic_b || insurance_b)
		p "Probably not a vampire."
# If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
# I discovered that this argument also conveniently catches "right age, no garlic, no insurance."
# I think this is because the || operator short circuits when the left operand = true
	elsif correct_age || (garlic_b || insurance_b)
		p "Probably a vampire."
# If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
	elsif correct_age || (garlic_b || insurance_b) == false
		p "Almost certainly a vampire."
# Otherwise, print “Results inconclusive.”
# Call me crazy, but I'm pretty sure given my short-circuited "elsifs" above there is no combination that will spit this "else" out.
	else
		p "Results inconclusive."
end

# Things I just learned:
# 1) The order of if/elsifs does matter, it works in a heirarchy/cascase similar to CSS
# 2) && and || operators can short circuit and mess up results if you're not careful


# On to Release 3!
