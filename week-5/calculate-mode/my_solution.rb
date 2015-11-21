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
  frequencies = array.each_with_object(Hash.new(0)) { |word, count| count[word] += 1 }
  mode_array = frequencies.select { |frequent_words, frequent_counts| frequent_counts == frequencies.values.max }.keys
  return mode_array
end

p mode([1,1,1,2,3,4])

p mode(["apple", "banana", "clementine", "banana", "cherry", "strawberry", "cherry"])

# 4. Reflection

# Which data structure did you and your pair decide to implement and why?

# We quickly landed on Hashes because we needed to store 2 things for each word (the word itself as the key and the number of times it occured as the value). This also wored for integers - so win-win!

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

# Yes we were successful at pseudocoding and for me it was much easier this time around and our code was easier to transcribe. yay!

# What issues/successes did you run into when translating your pseudocode to code?

# We were succesful at transcribing that first solution but it didn't give us the results we wanted. So our failure was that our pseudocode didn't account for how difficult we found it to get all the info into that new hash - I think this will come with expereince.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

# Intially we had to break it out into good old fashioned iterating through the hash. During refactoring we scoured the ruby docs and were just not very successfully implementing them. It took us quite a while to implement the methods correctly. I think this was in part due to our unfamiliarity with the ruby docs and not quite knowing what to expect the methods to return (nil, booleans, a new array, etc). I'm excited to complete the group challenge and get better at accessing the ruby docs!