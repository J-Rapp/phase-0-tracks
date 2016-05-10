def simple_method
	a = "puppies"
	puts "We're in the method."
	yield (a)
	puts "We're leaving the method."
end

simple_method { |yield_parameter| puts "Inside block with parameter #{yield_parameter}"}
