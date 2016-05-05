#Release 1 just requires you to gather basic info about the "applicant"

puts "Thank you for applying to Werewolf, Inc."
puts "What is your name?"
    name = gets.chomp.to_s
puts "How old are you?"
    age = gets.chomp.to_i
puts "What year were you born? (yyyy)"
	year = gets.chomp.to_i
puts "Do you like garlic? (y/n)"
	garlic = gets.chomp
puts "Will you be enrolling in health insurance? (y/n)"
	insurance = gets.chomp

p name, age, year, garlic, insurance

# Release 2 requires some programming skillz to add some logic to all this.
# We're going to be calling on the && and || operators later on, which
# means we need all our data to be in Boolean (or at least truthy/falsey).

# First, let's make sure their age matches their birth year, and convert that to Boolean.
	# Let's also consider they might not have had their birthday yet this year.

# Next, let's convert garlic and insurance preferences into Booleans.

# Now it's time for the logic bits
# If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
# If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
# If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
# Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
# Otherwise, print “Results inconclusive.”



