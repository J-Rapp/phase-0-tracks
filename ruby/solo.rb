# Release 0 -

# I will create a class for rubber ducks
# Each duck will vary by name, color, age (in years), and whether or not it still floats
# Each duck should be able to:
	# quack when squeezed, results depending on "firmness" of squeeze
	# bob in the water when splashed, results depending on severity of splash
	# break and no longer float
	# stare into your soul. all the time.

# Release 1 -

class Ducky
	attr_reader :color, :bouyant
	attr_accessor :name, :age

	def initialize(name, age, color)
		@name = name
		@age = age
		@color = color
		@bouyant = true
	end

	def squeeze(firmness)
		case firmness
		when "soft"
			puts "quack."
		when "medium"
			puts "QUACK."
		when "hard"
			puts "QUUUUAAAAACK!!!"
		else
			puts "#{name} is resilient to your attacks."
		end
	end

	def splash(waves)
		waves.times {|each| puts "bob."}
	end

	def break
		@bouyant = false
		puts "#{@name} no longer floats :( Have you talked to someone about anger management?"
	end

	def gaze
		puts "#{@name} stares into your soul with a peircing, cold gaze. Is #{@name} grateful? Indignant? It's hard to say, but either way it's a little unsettling."
	end
end

# DRIVER CODE

# Testing basic Class methods from Release 1 -
	# p duck1 = Ducky.new("Frank", 23, "yellow")
	# duck1.squeeze("hard")
	# duck1.splash(3)
	# duck1.break
	# duck1.gaze
# All instance methods work

# Release 2 prompt - 
# Your user should be allowed to create as many instances of your class as they like.
# Prompt the user for each attribute, and don't forget to convert their input to the appropriate data type. Store these class instances in an array.
# When the user indicates that they are finished creating instances, loop through the array and print out the attributes of each instance as a confirmation message of what was created.

# Release 2 pseudocode - 
# Greet the user
# Begin a loop
	# Ask what name the Ducky should have
	# Ask how old the Ducky is
	# Ask what color the Ducky is
	# Ask user if they want to puncture the Ducky
	# Store the Ducky instance data in an array
	# Ask the user if they'd like to create another Ducky
# When the user is done, print how many duckies were made
# Neatly print the stored attribute data of each Ducky
# Thank the user

puts "Welcome to the Rubber Ducky Creator!"

loop_done = false
until loop_done

	puts "What should this ducky be named?"

	puts "How old is this ducky?"

	puts "What color is this ducky?"

	puts "Do you want to puncture the ducky?"

	puts "Do you want to make another ducky?"
	another = gets.chomp[0].downcase
		if another == 'n'
			puts "Okie doke!"
			loop_done = true
		else
		end
end




