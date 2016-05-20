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
		puts "#{@name} no longer floats :("
	end

	def gaze
		puts "#{@name} stares into your soul with a peircing, cold gaze."
	end
end

# DRIVER CODE

# Testing basic Class methods from Release 1 - 
	# p duck1 = Ducky.new("Frank", 23, "yellow")
	# duck1.squeeze("hard")
	# duck1.splash(3)
	# duck1.break
	# duck1.gaze