# Jake Rapp and Will Friebel GPS 2.2


# Method to create a list
	# create a hash where the key is the grocery item and the value is the quantity
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # call on the .split method, which will give us an array
  # array.map the array into hash keys
  # set default quantity as values
  # print the list to the console [can you use one of your other methods here?]
# output: hash

# Method to add an item to a list
# input: item name (string) and optional quantity 
# steps:
	# hash[item name.to_sym] = quantity
# output: updated list

# Method to remove an item from the list
# input: item name (string)
# steps:
    # gets.chomp.downcase
    # if hash.has_key?(item_name)
    	# hash.delete(item_name)
    # else
    	# puts "item does not exist on list"
# output: return current hash

# Method to update the quantity of an item
# input: item_name and new_value
# steps:
	# hash[item_name.to_sym] = new_value
# output: return current hash

# Method to print a list and make it look pretty
# input: no input
# steps:
	# hash.each{|key, value| puts "#{key} #{value}"}
# output: none