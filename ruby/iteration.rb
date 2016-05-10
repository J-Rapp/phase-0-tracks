def simple_method
	a = "puppies"
	puts "We're in the method."
	yield (a)
	puts "We're leaving the method."
end

simple_method { |yield_parameter| puts "Inside block with parameter #{yield_parameter}"}

# Release 1

famous_spots = ["Space Needle", "Fremont Troll", "Underground Tour"]

p famous_spots

famous_spots.each { |spot| puts spot }

p famous_spots

famous_spots.map! do |spot|
	spot + "z"
end

p famous_spots

vegetable_season = {
	squash: "winter",
	tomato: "spring",
	beans: 3,
	cilantro: "4"
}

p vegetable_season

vegetable_season.each do |vegetable, season|
	puts "#{vegetable} is in #{season}"
end

# Release 2

int_array = [23, 98, 45, 1, 23, 105, 31, 34, 78, 56]

p int_array
p int_array.reject { |number| number.even? }
# p int_array.delete_if { |number| number.even? }

p int_array

p int_array.select { |number| number.even? }

# We found quite a fwe methods, such as .include? and .detect, they just
# don't make an array.

p int_array.take_while { |number| number != 1}

p int_array
