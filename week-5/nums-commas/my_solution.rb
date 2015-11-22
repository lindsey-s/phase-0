# Numbers to Commas Solo Challenge

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# an integer with no commas, of any length

# What is the output? (i.e. What should the code return?)
# a properly formatted number with commas separating digits

# What are the steps needed to solve the problem?

# Find the number of digits of the number
# If the length is less than or equal to three digits, return the number with no commas
# If the length is 4 or greater, add a comma three digits from the right of the number
# Continue adding commas every three digits as many times as necessary until there are 2 or fewer digits to the left
# return the number with commas


# 1. Initial Solution

#def separate_comma(number)
#  if number.to_s.length <= 3
#    return number.to_s

=begin
turns out this branch is not necessary! the else branch below handles any number with more than 3 digits!

  elsif number.to_s.length <= 6
    comma_number = number.to_s.reverse
    comma_number.insert(3,',')
    return comma_number.reverse
=end

#  else
#    comma_array = number.to_s.reverse.split("")
#    counter = 3
#      while counter < comma_array.length
#        comma_array.insert(counter, ",")
#        counter += 4
#      end
#    return comma_array.reverse.join
#  end
#end

# 2. Refactored Solution

def separate_comma(number)
  comma_array = number.to_s.chars.reverse.each_slice(3)
  comma_array.map(&:join).join(",").reverse
end

p separate_comma(10)
p separate_comma(100)
p separate_comma(1000)
p separate_comma(9000000)

# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?

# I spent much more time pseudocoding than previously and still wasn't any more effective in solving this problem than past challenges. I'm frustrated actually that I don't seem to be able to sucussfully pseudocode right now. I think I'll request a 1:1 with our guide/TA next week and ask about what I should do next.

# Was your pseudocode effective in helping you build a successful initial solution?

# no - as I mention above I'm hating on pseudocoding these days.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

# I used a lot of new Ruby methods in the refactoring and yes I think it changed the function of my code a lot. I no longer need to separate out the different numbers of digits to branch through and explicitly ask the method to return. Instead I was able to convert any number of digits into an array using the .chars method and then iterate through the items in the array every 3rd item with the .each_slice(x) method. Lastly I was able to join the array items into a new string with the .map(:&join) method and insert the comma by passing .join(x) the argument of ',' each time (remember this was all using .each_slice to join only every 3 items with the comma).

# I'm getting better at using the Ruby docs for sure and the group challenge helped me best get the hang of these docs. I do still have some difficulty implementing the ideas straight from the Ruby docs, however. I find a successful strategy for me is to find likely looking methods in the Ruby docs and then search other sources to see how people use the methods in practice. It always helps to see a "real world example" with these methods instead of just arbitrary variable letters.

# How did you initially iterate through the data structure?

# Initially I converted the number to an array of strings (one digit per item) and iterated through it using a while loop and a counter, which incremented by 4 each time through to place a comma.

# Do you feel your refactored solution is more readable than your initial solution? Why?

# At this point I think my initial solution is easier to read than the refactored solution because the inital solution walks the reader through the logic and the refactored solution is all about taking advantage of Ruby's built-in methods to convert objects between classes and iterate based on as few arguments as possible. However, refactoring this into just a few lines felt pretty good and I learned a lot about the methods in the process. I think for a more experienced reader it's probably pretty readable but it takes me a minute or two to walk myself through it.