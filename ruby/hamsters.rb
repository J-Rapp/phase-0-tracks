puts "What's the hamsters name?"
name = gets.chomp.to_s

puts "How loud is the hampster (1-10)?"
volume = gets.chomp.to_i

puts "What is the hampster's fur color?"
fur_color = gets.chomp.to_s

puts "Should we adopt?"
adopt = gets.chomp.to_s

puts "What the hamster's estimated age?"
age = gets.chomp
if age == ""
    age = nil
else
    age = age.to_i
end

puts "Name: #{name}\nVolume: #{volume}\nFur Color: #{fur_color}\nAdopt?: #{adopt}\nEstimated Age: #{age}"
