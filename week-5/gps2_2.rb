=begin

--- REFLECTION ---
* What did you learn about pseudocode from working on this challenge?
To be honest, we did not focus on pseudo code in this chellenge.
Rather we discussed solutions and I was able to go back after we finished and sort of re-pseudocode.

* What are the tradeoffs of using Arrays and Hashes for this challenge?
Using an array for this challenge would not have worked in all methods because we were trying to store two values at all times. If we had used an array instead of a hash we would have been converting the array back and forth to a hash in any method where the quantity for a list item was not 1. That would not have been dry code!

* What does a method return?
A method returns the last line of code evaluated. It may also have an explicit return statement. Remember that if the last line of code in the method is a print or puts statement, the method will actually return nil because both print and puts return nil and that print or puts statement would be the last thing evaluated in that method.

* What kind of things can you pass into methods as arguments?
You can pass almost any ruby object to a method as arguments.

* How can you pass information between methods?
As long as you have a global variable which makes sense for you to continue to pass into the next method as an argument, you can share values and use variables as building blocks in your methods.

* What concepts were solidified in this challenge, and what concepts are still confusing?
I am happy to say that looping and method returns were finally solidified through this challenge. I am still working on simply remembering all the tools in our chest. I plan to make myself some flashcards surrounding a few of the built-in ruby methods and their parameters.

--- PSEUDOCODE ---

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# - Initailize a method to accept a list of items as a string
#   - set the second parameter to have a default quantity: 1
# - create a new empty hash
# - split the long string (list items) up into separate values and use the space as deliminator
# - iterate through each item and add it to the empty hash with the default qty of 1
# - return the list to the console
# output: Hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: 1. Get item information (name, quantity)
2. Store to hash
# output: Updated hash

# Method to remove an item from the list
# input: Item name
# steps: Remove item from hash
# output: Updated hash

# Method to update the quantity of an item
# input: Item name, updated quantity
# steps: Locate item_name, change quantity
# output: Updated hash

# Method to print a list and make it look pretty
# input: Hash
# steps: Print to console, w/ formatting
# output: Text interpolated into string

--- INITIAL SOLUTIONS ---

def create_list(items_list, quantity = 1)
  items = items_list.split(" ")
  grocery_list = Hash.new

    items.each do |item|
    grocery_list[item] = quantity
    end
  return grocery_list
end

list = create_list("Apples Milk Pears")

def add_item(item_name, grocery_list, quantity = 1)
  grocery_list[item_name] = quantity
end

add_item('beer', list)
p list

def remove_item(item_name, grocery_list)
  grocery_list.delete(item_name)
end

remove_item('beer', list)
p list

def update_quantity(item_name, grocery_list, quantity)
  existing_quantity = grocery_list[item_name]
  new_quantity = existing_quantity + quantity
  if new_quantity <= 0
    remove_item(item_name, grocery_list)
  else
    grocery_list[item_name] = new_quantity
  end
end

update_quantity('Apples', list, 5)
p list
update_quantity('Apples', list, -7)
p list

def print_list(list_name)
  list_name.each do |i,q|
    puts "You need #{q} of #{i}."
  end
end
print_list(list)
=end

# --- REFACTORED SOLUTIONS ---

def add_item(item_name, grocery_list, quantity = 1)
  grocery_list[item_name] = quantity
end

def create_list(items_list)
  items = items_list.split(" ")

  items.each_with_object({}) do |item, grocery_list|
    add_item(item, grocery_list)
  end
end

list = create_list("Apples Milk Pears")

add_item('beer', list)
p list

def remove_item(item_name, grocery_list)
  grocery_list.delete(item_name)
end

remove_item('beer', list)
p list

def update_quantity(item_name, grocery_list, quantity)
  existing_quantity = grocery_list[item_name]
  new_quantity = existing_quantity + quantity
    if new_quantity <= 0
    remove_item(item_name, grocery_list)
    else
    grocery_list[item_name] = new_quantity
    end
end

update_quantity('Apples', list, 5)
p list
update_quantity('Apples', list, -7)
p list

def print_list(list_name)
  puts "Your Grocery List:"
  list_name.each { |i,q| puts "#{i} qty: #{q}" }
end
print_list(list)