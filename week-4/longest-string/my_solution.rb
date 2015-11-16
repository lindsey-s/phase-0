# Longest String

# I worked on this challenge [by myself].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below

def longest_string(list_of_words)
  if list_of_words == 0
    return nil
  else
    sorted_list = list_of_words.each do |word| word.downcase end
    sorted_list.sort_by! { |word| word.length }
    return sorted_list.last
  end
end

puts longest_string(["courderoy", "millionaire", "Abigail", "butternut", "example"])

# REFACTORED

def longest_string_refactored(list_of_words)
  list_of_words.max_by(&:length)
end

puts longest_string_refactored(["apple", "pie", "cranberry", "yum"])