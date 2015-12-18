# I worked on this challenge [by myself].
# This challenge took me [#] hours.


# Pseudocode

# define a 'super_fizzbuzz' method
# input: an array of numbers
# output: an array of numbers and strings

# iterate through the array
  # IF number is divisible by 3 but not by 5
    # replace the number with the string 'Fizz'
  # IF the number is divisibl eby 5 but not by 3
    # replace the number with the string 'Buzz'
  # IF number is divisible by both 3 and 5
    # replace the number with the string 'FizzBuzz'
  # ELSE
    # do not replace the number

# Initial Solution

# def super_fizzbuzz(array)

#   array.map! { |number|
#     if number % 3 == 0 && !(number % 5 == 0)
#       number = 'Fizz'
#     elsif number % 5 == 0 && !(number % 3 == 0)
#       number = 'Buzz'
#     elsif number % 3 == 0 && number % 5 == 0
#       number = 'FizzBuzz'
#     else
#       number
#     end }

#   p array

# end

# Refactored Solution

def super_fizzbuzz(array)

  array.map! { |number|
    if number % 3 == 0 && !(number % 5 == 0)
      number = 'Fizz'
    elsif number % 5 == 0 && !(number % 3 == 0)
      number = 'Buzz'
    elsif number % 3 == 0 && number % 5 == 0
      number = 'FizzBuzz'
    else
      number
    end }

  p array

end

# driver code
super_fizzbuzz([1,2,3])  # => [1, 2, "Fizz"]
super_fizzbuzz([1,2,5])  # => [1, 2, "Buzz"]
super_fizzbuzz([1,2,15]) # => [1, 2, "FizzBuzz"]

super_fizzbuzz([30, 9, 20, 1]) # => ["FizzBuzz", "Fizz", "Buzz", 1]

# Reflection

# I had a hard time refactoring that. I do want to review built-in
# Ruby methods before Phase 1.