class Santa
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end
	def initialize
		puts "initializing Santa instance..."
	end
end

santa = Santa.new
santa.eat_milk_and_cookies("peanut butter")
santa.speak