# def simple_method
# 	a = "puppies"
# 	puts "We're in the method."
# 	yield (a)
# 	puts "We're leaving the method."
# end

# simple_method { |yield_parameter| puts "Inside block with parameter #{yield_parameter}"}


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

