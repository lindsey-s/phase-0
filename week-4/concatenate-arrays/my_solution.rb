# Concatenate Two Arrays

# I worked on this challenge [by myself].


# Your Solution Below

def array_concat(array_1, array_2)
  concatenated_array = array_1 + array_2
  p concatenated_array
end

array_concat(["green", "mary"],[2,3,4,5,6])

# REFACTORED:

def array_concat_refactored(array_1, array_2)
  array_1.push(*array_2)
end

p array_concat_refactored(["peter", "nick"],["mosely", "riley", "hendrix"])