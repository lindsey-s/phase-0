# Reverse Words


# I worked on this challenge [by myself].
# This challenge took me [1] hour.

# Pseudocode
# Goal: write a method that takes a sentence as a string and reverses each word in the sentence

# input:    a sentence as a string
# output:   a string with each word in the sentence reversed

# steps:
  # split the string on space character
  # push each resulting string into an array
  # iterate through each item in the array
  # reverse each word
  # iterate backwards through the array
  # join the items into a string and insert a space between each item
  # return the new string

# Initial Solution

# def reverse_words (sentence)
#   sentence_array = sentence.split(" ")

#   sentence_array.map { |word|
#     word.reverse!}

#   p sentence_array.join(" ")
# end

# Refactored Solution

def reverse_words (sentence)
  sentence_array = sentence.split(" ")
  sentence_array.map(&:reverse!).join(" ")
end

my_sentence = "Du bist ein Berliner"
reverse_words(my_sentence)

# Reflection

# What concepts did you review or learn in this challenge?

# Ruby in general - it was kinda rusty! I kept wanting to put semi colons after statements.
# In detail I reviewed basics like method chaining and I finally feel like I have a handle on
# just how deatailed pseudocode should be. I was really happy that I was fairly quickly able
# to get a working solution and I think a lot of concepts we've been practicing have really solidified.

# What is still confusing to you about Ruby?

# I don't find much confusing about Ruby itself - at least not as examplified in this challenge.

# What are you going to study to get more prepared for Phase 1?

# I want to practice more with classes and understand inheritance better.
