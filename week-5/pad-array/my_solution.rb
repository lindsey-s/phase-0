# Pad an Array

# I worked on this challenge [with: Matt Oppenheimer; refactored with Luis De Castro and Reuben Brandt]
# I spent [3] hours on this challenge.

# 0. Pseudocode

# What is the input? an array of items, a minimum length for the array, a value to pad the array if needed
# What is the output? an array
# What are the steps needed to solve the problem?

=begin

Non-Destructive
1. define a method to accept the input (an array, a minimum length requirement, and a default value to add to the array if needed to meet minimum length)
2. check the size of the array
3. compare array length to the minimum length requirement
4. if the array length is at least as long as the requirement - return the array unaltered
5. if the array length is too short - add default value(s) to the array to meet the requirement
6. return the original array

Destructive
Repeat above steps 1 - 5
6. return an altered array with "padded" values

=end

# 1. Initial Solution

=begin

def pad!(array, min_size, value = nil) #Destructive
  if array.length >= min_size
    return array
  else
    while array.length < min_size
      array.push(value)
    end
  end
  return array
end

p another_array = [3,4,5]
p pad!(another_array, 8, "green")
p another_array

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.dup

  if new_array.length >= min_size
    return new_array

  else
    for i in new_array.length...min_size
      new_array[i] = value
    end

  end
  new_array
end

p temp_array = [1,2,3]
p pad(temp_array, 5,  "peaches")
p temp_array

=end

# 3. Refactored Solution

def pad!(array, min_size, value = nil) #Destructive
  array << value while array.length < min_size
  array
end

p test_array = ['x','y','z']
p pad!(test_array, 2, "great scott")
p test_array

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.dup
  new_array << value while new_array.length < min_size
  new_array
end

p temp_array = [1,2,3]
p pad(temp_array, 5,  "peaches")
p temp_array

# 4. Reflection

# Were you successful in breaking the problem down into small steps?

# I'm not sure we were too successful in pseudocoding. I still have the tendency to use language-specific words and concepts because I'm so focused on writing the method. It still seems too simple to just write the steps in plain english and I suspect this is partially due to not breaking it down into small enough steps.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

# We were not able to easily translate the steps into code - it was a bit of a wild ride. This is another sign we didn't break it down far enough.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

# Yes - our intial solutions were successful - but after many attempts that didn't work. We had to dive into the ruby docs prior to refactoring and do a lot of online research to really come up with a working solution. I think we should have looked harder at the spec file as well because we were initially not breaking it into the if-then clause.

# When you refactored, did you find any existing methods in Ruby to clean up your code?

# When refactoring I was much easier able to find what I was looking for. I spent a lot of time after we finished pairing thinking about the steps we took and was able to really efficiently search the ruby docs because I knew what I was looking for.

# How readable is your solution? Did you and your pair choose descriptive variable names?

# I think the end product here is very readable! I'm super happy with the refactoring. The most important variable names were already established when we copied the blank my_solution file from the GitHub repo. I do want to focus on variable naming in future challenges, however.

# What is the difference between destructive and non-destructive methods in your own words?

# A destructive method alters the variable in place while the non-destructive method does not.