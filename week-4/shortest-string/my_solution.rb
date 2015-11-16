# Shortest String

# I worked on this challenge [by myself].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below

def shortest_string(list_of_words)
  list_of_words.min { |a, b| a.size <=> b.size }
end

puts shortest_string(['andrew', 'lindsey', 'hayes', 'ian', 'ally'])
puts shortest_string([])

# REFACTORED

def really_short(list_of_words)
  list_of_words.min_by {|word| word.length }
end

puts really_short(["greg", "brad", "jamie", "dan"])
puts really_short(["ian", "ben", "stephanie", "amanda", "alex", "maggie", "dave"])