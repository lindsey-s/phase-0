# Add it up!

# I worked on this challenge [with Luis De Castro].

# 0. total Pseudocode

# Input: an unknown number of integers
# Output: one integer: sum of all numbers in the array

# Steps to solve the problem.

# define method called total that accepts an unknown number of integers as parameters
# assign a new variable to an empty array
# push all parameters into the array (use .push here)
# assign another new variable to store the sum
# loop through each number in the array adding it to the sum (use += here)

# 1. total initial solution

# this turned out quite different from our pseudocode
=begin
def total (my_array)
  sum = 0
  my_array.each do |i|
    sum += i
  end
  return sum
end

puts total([1,2,3,4]) #result is 10
=end

# 3. total refactored solution

def total (my_array)
  my_array.inject { |sum, n| sum + n }
end

#can also use my.array.inject(:+) or my_array.reduce(:+)

puts total ([1,2,3,4])

# 4. sentence_maker pseudocode

# Input: an unknown number of words as strings
# Output: one string presented as a sentence with the first word capilatlized, a period at the end, and spaces between each word

# Steps to solve the problem.

# define a method called sentence_maker that accepts a single parameter
# assign a new variable to the first string in the array
# call .capitalize method on the first string
# remove the first item from the array
# iterate through the rest of the array and add them to the variable with a space inbetween
# add the period to the end
# return the variable with the full sentence stored
# when calling the method, the strings must be passed in an array

# 5. sentence_maker initial solution

def sentence_maker(my_sentence_array)
  sentence = ""

    my_sentence_array.each do |word|
      sentence << (word.to_s + " ")
    end

  return sentence.chomp(" ").capitalize + "."

end

puts sentence_maker(["all", "my", "socks", "are", "dirty"])

puts sentence_maker(["there", "are", 40, "million", "ants", "in", "the", "kitchen"])

# 6. sentence_maker refactored solution

def sentence_maker_refactored(my_sentence_array)
  sentence = my_sentence_array.join(" ") + "."
  return sentence.capitalize
end

puts sentence_maker_refactored(["there", "are", "40", "million", "ants", "in", "the", "kitchen"])

puts sentence_maker_refactored(["alaska", "has", "over", 586, "thousand", "miles"])