# Collab with Harrison Zandri

class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(times)
  	times.times {|x| puts "Woof!"}
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(years)
  	dog_age = years * 7
  	return dog_age
  end

  def check_bladder(months_old, last_time_went)
  	time_lasting = months_old - last_time_went 
  	puts "Puppy has #{time_lasting} hours to go to bathroom."
  	time_lasting
  end

  def initialize
  	puts "Initalizing new puppy instance ..."
  end

end

our_puppy = Puppy.new
our_puppy.fetch("bone")
our_puppy.speak(5)
our_puppy.roll_over
puts our_puppy.dog_years(7)
our_puppy.check_bladder(6,4)


class Duck
	def initialize
		puts "I am duck!!"
	end

	def quack(quacks)
		quacks.times {|x| puts "QUACK!!!"}
	end

	def reaction(item)
		if item.downcase == "bread"
			puts "The ducks are swarming!"
		else
			puts "The ducks ran away!"
		end
	end
end

runs = 50
duck_array = []
until runs == 0
	duck_array << Duck.new
	runs -= 1
end
duck_array.each do |duck|
	duck.quack(2)
	duck.reaction("breaD")
end
#p duck_array