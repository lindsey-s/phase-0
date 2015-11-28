# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with Monique Williamson].
# I spent [3.5] hours on this challenge.

# Pseudocode

# Input: a credit card number (string)
# Output: true / false

# Steps:

# Initialize a method to accept a credit card number passed as a string
# define a check card method to return true for a valid card and false for an invalid card
  # If the card number is not 16 digits
# raise an ArgumentError
  # Elsif the card number is 16 digits
  # start at 2nd to last number and double it
  # repeat for every other number in the card number (going backwards) until the first digit (including the first digit)
  # sum all the digits in the card number but break out double digits
  # the total must be evenly divisible by 10
# return true
  # else - return false


# Initial Solution

# class CreditCard

#   def initialize(card_number)
#     if card_number.to_s.size != 16
#       raise ArgumentError.new("Please enter 16 digit credit card number")
#     else @card_number=card_number.to_s
#     end
#   end

#   def check_card

#     split_numbers=@card_number.reverse.split(//).map(&:to_i)

#     doubled_numbers = split_numbers.each_with_index.map{ |number, index|
#       if (index % 2 != 0)
#         product = number * 2

#         if product >= 10
#           product.to_s.split(//)
#         else product
#         end

#       else
#         number
#       end }

#     doubled_numbers.flatten!.map!(&:to_i)

#     sum = doubled_numbers.inject{ |sum, number| sum + number }

#     if ( sum % 10 == 0)
#       p true
#     else
#       p false
#     end

# end

# end

# my_card=CreditCard.new(4567876898678394)
# my_card.check_card

# Refactored Solution

class CreditCard

  def initialize(card_number)
    # method takes a string, not integer
    if card_number.size == 16
      @card_number = card_number
    else
      raise ArgumentError.new("Please enter 16 digit credit card number")
    end
  end


  def check_card

    split_numbers = @card_number.reverse.split(//).map(&:to_i)

    doubled_numbers = split_numbers.each_with_index.map{|number, index|

      if (index % 2 != 0)
        product = number * 2

        # ternary conditional statement to split double-digit products
        product >= 10 ? product.to_s.split(//) : product

      else number
      end }

    doubled_numbers.flatten!.map!(&:to_i)

    sum = doubled_numbers.inject{|sum, number| sum + number}

    if sum % 10 == 0
      true
    else
      false
    end

end

end

my_card=CreditCard.new('4567876898678394')
p my_card.check_card

# Reflection

# What was the most difficult part of this challenge for you and your pair?

# We struggled a lot with type errors and conversion issues in this challenge.
# Just going back and forth with integers and strings really made our code long
# and likely tricky to read. Thankfully, when things were tough, we had pretty good
# psuedcode to fall back on.

# What new methods did you find to help you when you refactored?

# In our initial solution we didn't take too much advantage of all the features
# that defining our own classes have to offer. In refactoring I found it reall difficult
# to add these features since our code didn't consider them in the first place. In future
# it's clear we'll need to keep this in mind during psuedocoding.

# What concepts or learnings were you able to solidify in this challenge?

# This challenge really helped me think about object types as I think through
# the initial solution.