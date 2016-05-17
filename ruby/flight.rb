module Flight
	def take_off(altitude)
		puts "Taking off and ascending to #{altitude}"
	end
end

class Bird
	include Flight
end

class Plane
	include Flight
end

bird = Bird.new
bird.take_off("800 ft")

plane = Plane.new
plane.take_off("30,000 ft")