# Release 0 -

# I will create a class for rubber duckies
# Each ducky will vary by name, color, age (in years), and whether or not it still floats
# Each ducky should be able to:
	# quack when squeezed, results depending on "firmness" of squeeze
	# bob in the water when splashed, results depending on severity of splash
	# get punctured and no longer float
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

	def puncture
		@bouyant = false
	end

	def gaze
		puts "...#{@name} stares into your soul in that way only a rubber ducky can..."
	end
end

# DRIVER CODE

# Testing basic Class methods from Release 1 -
	# p duck1 = Ducky.new("Frank", 23, "yellow")
	# duck1.squeeze("hard")
	# duck1.splash(3)
	# duck1.break
	# duck1.gaze
# All instance methods work, including ones with parameter arguments passed in

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

puts "" # I add empty strings throughout my driver code for formatting purposes when the program is running.
puts "Welcome to the Rubber Ducky Creator!"

ducky_array = []
loop_done = false
until loop_done

	puts ""
	puts "What should this ducky be named?"
	ducky_name = gets.chomp

	puts ""
	puts "How many years old is this ducky?"
	ducky_age = gets.chomp.to_i

	puts ""
	puts "What color is this ducky?"
	ducky_color = gets.chomp

	new_duck = Ducky.new(ducky_name, ducky_age, ducky_color)

	puts ""
	puts "Do you want to puncture the ducky?"
	ouchie = gets.chomp[0].downcase
		if ouchie == "y" || ouchie == "t"
			new_duck.puncture
			puts "#{new_duck.name} no longer floats :("
			puts "(Have you talked to someone about anger management?)"
		else
			puts "(You're a good person!)"
		end

	puts ""
	new_duck.gaze
	ducky_array << new_duck

	puts ""
	puts "Do you want to make another ducky?"
	another = gets.chomp[0].downcase
		if another == "n"
			puts "Okie doke!"
			loop_done = true
		else
		end
end

puts ""

if ducky_array.length == 1
	puts "You made 1 ducky:"
else
	puts "You made #{ducky_array.length} duckies:"
end

ducky_array.each do |duck|
	puts "#{duck.name} is a #{duck.age}-year-old, #{duck.color} ducky! (Bouyant: #{duck.bouyant})"
end

puts ""
puts "Thank you for using the Rubber Ducky Creator!"
puts ""
