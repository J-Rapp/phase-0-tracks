class Santa
	def initialize(gender, ethnicity)
		puts "initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		age = 0
	end
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end
end

# santa = Santa.new
# santa.eat_milk_and_cookies("peanut butter")
# santa.speak

santas = []
gender_array = ["agender", "demiboy", "femme", "intergender", "polygender", "queer", "transgender", "genderfluid"]
ethnicity_array = ["Icelander", "Korean", "Serb", "Bihari", "Kurd", "Welsh", "Zhuang", "Lebanese"]

gender_array.length.times{|i| santas << Santa.new(gender_array[i],ethnicity_array[i])}
p santas