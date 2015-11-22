# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [2.5] hours on this challenge.

# 0. Pseudocode

# Input: n/a
# Output: n/a
# Steps:

# set up a blueprint for dice objects
# everytime someone wants to create a new dice - they will use this blueprint and have access to the following functions:

# (initialize) All new dice will require the user to assign the number of sides to the new dice
# the start up(initialize) function will include a check to make sure the user enters a positive number above 0 for the number of sides required
# the dice will always have that many sides, there is no mechanism (yet) to increase or decrease the number of sides

# (roll) All new dice will be able to be rolled
# when the user asks the dice to roll the mechanism will return a random number between 1 and the total number of sides as specified when the user creates the new dice
# at this time the blueprint only allows the user to create and roll one die at a time


# 1. Initial Solution
=begin
class Die

  def initialize(sides)
    if sides <= 0
      raise ArgumentError.new("Please enter a positive number above 0")
    end
    @sides = sides
  end

  def sides
    puts "Your dice has #{@sides} sides"
    @sides
  end

  def roll
    rand(1..@sides)
  end

end

p Die.new(7)
p new_dice = Die.new(6)
p new_dice.sides
p new_dice.roll
=end
# 3. Refactored Solution

class Die

  def initialize(sides)
    raise ArgumentError.new("Please enter a positive number above 0") if sides <= 0
    @sides = sides
  end

  def sides
    puts "Your dice has #{@sides} sides"
    @sides
  end

  def roll
    rand(1..@sides)
  end

end

# 4. Reflection

# What is an ArgumentError and why would you use one?

# An ArgumentError is a special exception that you can implement when you want to catch incorrect input or bad branches of logic that you want to be unacceptable. Raising an ArgumentError stops your program and it will not continue to run or loop.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

# I didn't use any new Ruby methods - other than creating and working in a user-creatd Ruby class.

# What is a Ruby class?

# A Ruby class is a space that contains methods unique to all objects in that class. For example, the String class has several built-in methods and properties which all instances of the String class inherit. This meanst hat all objects in Ruby that are the data type string inherit cool methods and properties from their class like .length and behave as defined in their class.

# Why would you use a Ruby class?

# We can also create our own Ruby classes as programmers to take advantage of this inheritance. Then all objects of our defined class will behave as specified in our class. This is especially useful if you have a batch of objects to create which should all have the same behaviors. For example, if you have a bunch of students and want to store their information like grades, student ids, picture files, mailing addresses, class schedules, etc - you might create a Student class and define several methods to give all objects of the Student class (in this case, give behaviors to the students!).

# What is the difference between a local variable and an instance variable?

# While local variables are always local to the methods in which they are specified, instance variables are local to the class in which they are specified. They can be accessed by any method in that class so they will keep their values between method calls in that object.

# The visual difference is that instance variables have one '@' sign preceding the variable name (i.e. @sides)

# Where can an instance variable be used?

# Instance variables are used in defining the class - they cannot be used outside of the class definition.