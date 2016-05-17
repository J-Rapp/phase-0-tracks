class Santa

	attr_reader :reindeer_ranking, :ethnicity
	attr_accessor :age, :gender

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
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
	def get_mad_at(reindeer)
		i = @reindeer_ranking.index(reindeer)
		@reindeer_ranking.delete_at(i)
		@reindeer_ranking.insert(8, reindeer)
		p @reindeer_ranking
	end

# "Setter" methods - change attribute values from outside the class definition
# "get_mad_at" used to live in here but I moved it up for cleanliness-sake
	# def celebrate_birthday
	# 	@age += 1
	# 	puts "Santa is #{@age} years old."
	# end
	# def gender_reassign=(new_gender)
	# 	@gender = new_gender
	# 	puts "New gender is #{@gender}"
	# end

# "Getter" methods - access attribute values outside of the class definition
	# def age
	# 	puts "#{@age}"
	# end
	# def ethnicity
	# 	puts "#{@ethnicity}"
	# end
end

# Release 0 - 

# santa = Santa.new
# santa.eat_milk_and_cookies("peanut butter")
# santa.speak

# Release 1 -

# santas = []
# gender_array = ["agender", "demiboy", "femme", "intergender", "polygender", "queer", "transgender", "genderfluid"]
# ethnicity_array = ["Icelander", "Korean", "Serb", "Bihari", "Kurd", "Welsh", "Zhuang", "Lebanese"]

# gender_array.length.times{|i| santas << Santa.new(gender_array[i],ethnicity_array[i])}
# p santas

# Release 2 - setters/getters

# santa_dos = Santa.new("n/a", "Polish")

# test setters
	# santa_dos.celebrate_birthday
	# santa_dos.get_mad_at("Vixen")
	# santa_dos.gender_reassign = "lady-like"
# test getters
	# p santa_dos.age
	# p santa_dos.ethnicity

# Release 3 - refactor age, ethnicity, and gender via "attr_accessor"

# santa_dos = Santa.new("n/a", "Polish")

# p santa_dos.age # Readable and writable
# santa_dos.age = 5
# p santa_dos.age

# p santa_dos.ethnicity
# santa_dos.ethnicity = "Czech" -- testing it, and as expected: can't write, only read

# p santa_dos.gender # Readable and writable
# santa_dos.gender = "Two-Spirit"
# p santa_dos.gender

# p santa_dos.reindeer_ranking
# p santa_dos.reindeer_ranking = ["new array"]  -- can't write, only read

# Release 4

# Some basic ideas before starting the algorithm:
# Create a set integer of santa instances (<integer>.times for number of santa instances using ".new")
# Each santa should get a random assign of both gender and ethnicity (".sample" should work on the arrays to populate the class parameters)
# Age should be a random interger between 0 and 140 (santa.age = rand(0..140) should work since @age is writable with "attr_accessor")
# Doesn't need to store in a data structure, but should print each instance attributes (so just "puts" each instance as it happens)

gender_array = ["agender", "demiboy", "femme", "intergender", "polygender", "queer", "transgender", "genderfluid"]
ethnicity_array = ["Icelander", "Korean", "Serb", "Bihari", "Kurd", "Welsh", "Zhuang", "Lebanese"]

100.times do
	santa = Santa.new(gender_array.sample, ethnicity_array.sample)
	santa.age = rand(0..140)
	puts " This santa self-identifies as a #{santa.age}-year-old, #{santa.gender}, #{santa.ethnicity}."
end

# And it works!