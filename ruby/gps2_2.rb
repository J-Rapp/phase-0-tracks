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


#DRIVER CODE

#Adds items to the grocery list
def add_item(item, quantity, list)
  list[item.to_sym] = quantity
end

#Updates the quantity of an item
def update_item(item, quantity, list)
  if list.has_key?(item.to_sym)
    add_item(item, quantity, list)
    return true
  else
    return false
  end
end

#Prints the list
def print_list(list)
  puts "-----------------------------"
  list.each {|item, quantity| puts "#{item}: #{quantity}"}
  puts "-----------------------------"
end

#Removes an item from the list
def remove(item, list)
  if list.has_key?(item.to_sym)
    list.delete(item.to_sym)
    return true
  else 
    return false
  end 
end

#Create grocery list
def create_list(list_str)
  list = {}
  list_str.split(" ").map {|item| list[item.to_sym] = 1}
  list
end


#TEST CODE

grocery_list = create_list("lemonade tomotoes onions ice-cream")
print_list(grocery_list)
update_item("lemonade", 2, grocery_list)
print_list(grocery_list)
update_item("tomotoes", 3, grocery_list)
print_list(grocery_list)
update_item("ice-cream", 4, grocery_list)
print_list(grocery_list)
remove("lemonade", grocery_list)
print_list(grocery_list)
update_item("ice-cream", 1, grocery_list)
print_list(grocery_list)

# Release 5

