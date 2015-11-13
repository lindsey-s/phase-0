# Factorial

# I worked on this challenge [with: Luis De Castro].

# Pseudocode

# General
# take a number and multiply it by the next lowest number
# continue to multiply sequentially UNTIL you reach 1

# Solution_1
# define method to accept a singe number
# WHILE number is less than number given
  # LOOP through each number from 1
  # and multiply by next highest number

# Solution_2
# UNTIL number is 1
  # LOOP through number sequentailly decreasing
# BREAK if number is equal to 0

# Your Solution Below

def factorial(number)
  i = 1
  until number == 0
    i *= number
    number -= 1
  end
  i
end

puts factorial(10)
puts factorial(20)
puts factorial(0)