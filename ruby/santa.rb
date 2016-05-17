class Santa

	attr_reader :reindeer_ranking
	attr_accessor :age, :gender, :ethnicity

	def initialize(gender, ethnicity)
		puts "initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end

# "Setter" methods - changing attributes from outside the Class definition
	# def celebrate_birthday
	# 	@age += 1
	# 	puts "Santa is #{@age} years old."
	# end

	def get_mad_at(reindeer)
		i = @reindeer_ranking.find_index(reindeer)
		@reindeer_ranking.delete_at(i)
		@reindeer_ranking.insert(8, reindeer)
		p @reindeer_ranking
	end

	# def gender_reassign=(new_gender)
	# 	@gender = new_gender
	# 	puts "New gender is #{@gender}"
	# end

# "Getter" methods - access to attributes outside of the class definition
	# def age
	# 	puts "#{@age}"
	# end

	# def ethnicity
	# 	puts "#{@ethnicity}"
	# end
end

# santa = Santa.new
# santa.eat_milk_and_cookies("peanut butter")
# santa.speak

santas = []
gender_array = ["agender", "demiboy", "femme", "intergender", "polygender", "queer", "transgender", "genderfluid"]
ethnicity_array = ["Icelander", "Korean", "Serb", "Bihari", "Kurd", "Welsh", "Zhuang", "Lebanese"]

gender_array.length.times{|i| santas << Santa.new(gender_array[i],ethnicity_array[i])}
# p santas

santa_dos = Santa.new("n/a", "Polish")
# Release 2 - setters/getters
# test setters
	# santa_dos.celebrate_birthday
	santa_dos.get_mad_at("Vixen")
	# santa_dos.gender_reassign = "lady-like"
# test getters
	# p santa_dos.age
	# p santa_dos.ethnicity

# Release 3 - refactor age, ethnicity, and gender via "attr_accessor"
p santa_dos.age
santa_dos.age = 5
p santa_dos.age

p santa_dos.ethnicity
santa_dos.ethnicity = "Czech"
p santa_dos.ethnicity

p santa_dos.gender
santa_dos.gender = "Two-Spirit"
p santa_dos.gender

p santa_dos.reindeer_ranking
# p santa_dos.reindeer_ranking = ["new array"]  -- doesn't work since the ranked array is set to read only

# Release 4


