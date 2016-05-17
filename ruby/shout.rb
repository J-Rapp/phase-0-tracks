# # Module for Release 1
# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + ":("
# 	end

# 	def self.yell_happily(words)
# 		words + "!!!" + ":)"
# 	end
# end

# # Driver code for Release 1
# p Shout.yell_happily("Hello")
# p Shout.yell_angrily("Hello")

# Release 3
module Shout
	def yell_angrily(words)
		puts words.upcase + "!!!" + " :("
	end

	def yell_happily(words)
		puts words + "!!!" + " :)"
	end
end

class Howler_monkey
	include Shout
end

class Annoying_human
	include Shout
end

monkey = Howler_monkey.new
stupid = Annoying_human.new

monkey.yell_happily("banana")
monkey.yell_angrily("banana")
stupid.yell_happily("I'm not so smart")
stupid.yell_angrily("I'm not so smart")