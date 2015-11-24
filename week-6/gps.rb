# Your Names
# 1) Lindsey Stevenson
# 2) Yi Lu

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.

=begin

def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  # to define the library as a fixed hash with items on the menu and the qty in storage
  error_counter = 3
  # sets the error counter to 3 to match the number of key-value pairs in the library hash

  library.each do |food|
    if library[food] != library[item_to_make]
      p error_counter += -1
    end
  end
  # interates through the library
  # if item_to_make does not belong to one of the keys in the hash, error counter decreases by 1

  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
  # if the error counter equals 0, then raise an error (this code is not functioning very well)

  serving_size = library.values_at(item_to_make)[0]
  # if the eror counter does not equal 0, find the value of item_to_make in the library hash

  serving_size_mod = order_quantity % serving_size
  # sets a variable to equal the modulus of the order quantity divided by the serving_size
  # this variable is later meant to evaluate if the serving size is greater than the order quantity
  # but this code doesn't execute that intention

  case serving_size_mod

  when 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
    # returns a string when serving_size_mod = 0
    # instructs the user to bake the order quantity divided by the serving size (integer division)
    # of the item_to_make
    # this code is meant to evaluate if the serving size is less than quantity size but does not
    # it means to instruct the user to bake the difference of quantity size minus the serving
    # size of item_to_make

  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
    # returns a string if the serving_size_mod is anything but 0 (including negative numbers)
    # instructs the user to bake the order quantity divided by the serving size (integer division)
    # of the item_to_make and informs them they have the serving_size_mod # of items left in stock
    # (remember serving size mode is likely meant to be the difference but is actually the modulus)
    # this code is meant to account for the case that the serving size is greater than quantity size
    # and then return how many are left over once this order is released to the customer

  end
end
=end

# --- Plan to refactor ---

# error_counter may not be needed
# replace error_counter and initial iteration through library hash with ArgumentError
# may not need need serving_size and serving_size_mod
# continue to case statement - refactor to if-else statement
# when the order_quantity is greater than the value in library hash
# return how many of the item_to_make are left over
# elsif
# the order_quantity is equal to the value in library hash - return message (tbd)
# else
# return how many to make (difference of item_to_make - value in library hash)


# --- Refactored Method ---

def serving_size_calc(item_to_make, order_quantity)

  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  if library.has_key?(item_to_make)

    if order_quantity > library[item_to_make]

      difference = order_quantity-library[item_to_make]

      return "Calculations complete: No need to make any of #{item_to_make}; item is in stock. After order you will still have #{difference} leftover items."

    elsif order_quantity == library[item_to_make]
      return "Calculations complete: You have just enough of #{item_to_make}!"

    else
      return "Calculations complete: Make #{difference} of #{item_to_make}"
    end

  else
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("apple pie", 5)

# --- Reflection ---

# What did you learn about making code readable by working on this challenge?

# this code was not necessarily hard to read and understand as much as it was full or errors.
# I did think that if there had been any comments in the code it would have been a cinch for
# us to refactor or repurpose blocks of code. So that's a good lesson!

# Did you learn any new methods? What did you learn about them?

# This time I didn't actually learn any new methods (we did implement a method .has_key?
# where we originally had .keys.include?)

# What did you learn about accessing data in hashes?

# the original code iterated throught the hash without specifying what ruby should do with both
# the key and value but only gave one item to the .each method. This didn't throw an error which
# surprised me, rather it iterated through all items (each key and each value) in the hash and
# returned odd results.

# What concepts were solidified when working through this challenge?

# clear code as well as the importance of testing your code and understanding what exactly each
# of your variables is pointing at at all times in the method. It also seems like the code could easily
# have been the result of not properly pseudocoding or breaking the problem into small enough bits.