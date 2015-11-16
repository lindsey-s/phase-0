# Largest Integer

# I worked on this challenge [by myself].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
  sorted_list_of_nums = list_of_nums.sort
  return sorted_list_of_nums.last
end

puts largest_integer([10, 20, 40, 30])

# Refactored:

def largest_integer_refactored(list_of_nums)
  return list_of_nums.max
end

puts largest_integer_refactored([8, 7, 4, 11, 22, 25, -200])