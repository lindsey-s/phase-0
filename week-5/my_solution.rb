# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Rueben Brandt, Luis De Castro]

# I spent [3] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.

# 0. Pseudocode

# What is the input? an array
# What is the output? (i.e. What should the code return?) the most occuring item in the array
# What are the steps needed to solve the problem?
=begin
1. input array into function
2. count the number of times each item occurs in the array
3. find the item that occurs most frequently
4. return the most recurring item
=end

# 1. Initial Solution
=begin
def mode(array)
  frequency = Hash.new(0)
    array.each do |item|
      frequency[item] += 1
    end
  new_array = []
    frequency.each do |word, occurance|
      if occurance == frequency.values.max
        new_array << word
      end
    end
    return new_array
end

p mode(["apple", "banana", "clementine", "banana", "cherry", "strawberry", "cherry"])

p mode([1,3,5,7,9,7])
=end
# 3. Refactored Solution

def mode(array)

   freq = array.each_with_object(Hash.new(0)) { |word, counts| counts[word] += 1 }

   new_array = []
     (freq.select { |word, counts| counts == freq.values.max}) << new_array
    return new_array
end

p mode([1,1,1,2,3,4])

p mode(["apple", "banana", "clementine", "banana", "cherry", "strawberry", "cherry"])

# 4. Reflection