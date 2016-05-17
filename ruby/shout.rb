module Shout
	def self.yell_angrily(words)
		words + "!!!" + ":("
	end

	def self.yell_happily(words)
		words + "!!!" + ":)"
	end
end

# Driver code for Release 1
p Shout.yell_happily("Hello")
p Shout.yell_angrily("Hello")