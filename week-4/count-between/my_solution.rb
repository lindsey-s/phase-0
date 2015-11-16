# Count Between

# I worked on this challenge [by myself].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

=begin
def count_between_nice_try(list_of_integers, lower_bound, upper_bound)
  if list_of_integers.empty?
      return 0

  elsif list_of_integers.min <= lower_bound && list_of_integers.max <= upper_bound
    diff_1 = lower_bound..list_of_integers.max
    return diff_1.count
    #can also use .length here

  elsif list_of_integers.min >= lower_bound && list_of_integers.max <= upper_bound
    return list_of_integers.count

  elsif list_of_integers.min >= lower_bound && list_of_integers.max >= upper_bound
    return "mouse"

  else
    return "zoot suit"
  end
end

p count_between_nice_try([1,2,3], 0, 100)      # => 3
p count_between_nice_try([-10, 1, 2], 0, 100)  # => 2
p count_between_nice_try([10, 20, 30], 10, 30) # => 3
p count_between_nice_try([], -100, 100)        # => 0
p count_between_nice_try([0], 0, 0)            # => 1
=end
# After 2 hours - I could not for the life of me solve this one without the ruby docs...

# REFACTORED:

def count_between(list_of_integers, lower_bound, upper_bound)

  good_nums = list_of_integers.select { |number| number <= upper_bound && number >= lower_bound }

  p good_nums.length

end

count_between([1,2,3], 0, 100)      # => 3
count_between([-10, 1, 2], 0, 100)  # => 2
count_between([10, 20, 30], 10, 30) # => 3
count_between([], -100, 100)        # => 0
count_between([0], 0, 0)            # => 1