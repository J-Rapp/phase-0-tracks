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

# What did you learn about pseudocode from working on this challenge?
	# I think this challenge helped me understand that pseudocode is really just plain English.
	# Pseudocode really shouldn't even include syntax, it just needs to explain what happens, step by step
# What are the tradeoffs of using arrays and hashes for this challenge?
	# I think our choice of a hash seems best in this case, because of the key/value pairing for item/quantity. It worked perfectly with no tradeoffs.
	# I seriously can't imagine pulling this data from arrays. I suppose two arrays where index values match item too quantity?
	# I can't even see advantages to the array. Maybe if you like.. wanted to calculate total items it would be easier to get the sum of an array than values of a hash?
# What does a method return?
	# Is this a trick question? A method returns whatever you tell it to.. implictly via the last line or explicitly with the <return> tag
# What kind of things can you pass into methods as arguments?
	# Most classes (integer, string, array, hash)
# How can you pass information between methods?
	# By calling one method inside of the other
# What concepts were solidified in this challenge, and what concepts are still confusing?
	# I think in general I'm understanding how to break methods into more bite-sized computers, giving them a small task
	# I'm starting to get better at best practices with methods in that way
	# I think the concept I'm struggling with most is conceptualizing (funny, right?) the best way to break a problem down
	# Pseudocoding is currently a hindrance to me, because I tend to think about the big picture..
	# in other words, my brain immediately goes to refactoring almost as a Step #1
	# But DBC doesn't want that. DBC wants us to pseudocode and method our the smallest details.
	# My brain just works bigger than that.. I want to see what the craziest chain of commands I can put together are.
	