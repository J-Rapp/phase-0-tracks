# Release 0 -

# I will create a class for rubber ducks
# Each duck will vary by color, age (in years), and whether or not it still floats
# Each duck should be able to:
	# quack when squeezed, results depending on "firmness" of squeeze
	# bob in the water when splashed, results depending on severity of splash
	# stare into your soul. all the time.

# Release 1 -

class Rubber_duck
	def initialize(age, color, bouyancy)
		@age = age
		@color = color
		@bouyancy = bouyant
	end
	def squeeze(firmness)
		case firmness
		when "soft"
			puts "quack."
		when "medium"
			puts "QUACK."
		when "hard"
			puts "QUUUUAAAAACK!!!"
	end
	def splash(waves)
		waves.times {|each| puts "bob. "}
	end
	def gaze
		puts "The rubber duck stares into your soul with a peircing, cold gaze."
	end
end