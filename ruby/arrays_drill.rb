this_array = []

this_array << 5 << "here's a string" << false << nil << 0
p this_array

this_array.delete_at(2)
p this_array

this_array.insert(2, true)
p this_array

this_array.shift
p this_array

included = this_array.include? nil
if included
	puts "Does include 'nil'"
else
	puts "Does not include 'nil'"
end

that_array = [56, "jake", "ed", 42, false]

new_array = this_array + that_array
p new_array