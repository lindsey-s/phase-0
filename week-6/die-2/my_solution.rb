# Die Class 2: Arbitrary Symbols

# I worked on this challenge [by myself].
# I spent [2] hours on this challenge.

# --- --- Pseudocode --- ---

# Input:
  # an array of strings (unknown size)

# Output:
  # when rolled, the dice will return a random side value
  # (one of the elements in the array passed in)

# Steps:

# create the class
  # initialize method should accept a list of items
  # result in an error if the list is empty

# define a method to determine how many sides the dice has

# define a method for rolling the dice
  # choose a side at random to display as the result of the roll
  # it should be different every time

# --- --- notes to self for initial solution: --- ---

# initialize method
# set an instance variable @sides that all methods in the class will share
    # @sides will be an array itself (duplicate of the original)

# sides method
  # access the original label array and call .size
  # (may need to establish another instance variable in initialize method?)

# roll method
  # iterate through @sides array
    # randomly choose one side to return (.shuffle)

# Initial Solution

# class Die

#   def initialize(labels)
#     if labels.empty?
#       raise ArgumentError.new("Please enter a valid array")
#     else
#       @sides = labels.dup
#       @labels = labels
#       p "Your dice has been initialized with #{@sides.size} sides!"
#     end
#   end

#   def sides
#     p @labels.size
#   end

#   def roll
#     @sides.shuffle!
#     p @sides[0]
#   end

# end

# new_dice = Die.new([1,2,3,4])
# new_dice.sides
# new_dice.roll

# Refactored Solution

class Die

  def initialize(labels)
    if labels.empty?
      raise ArgumentError.new("Please enter a valid dice (at least one side!)")
    else
      @dice_sides = labels
    end
  end

  def sides
    p "Your dice has #{@dice_sides.size} sides!"
    return @dice_sides.size
  end

  def roll
    p @dice_sides.shuffle[0]
  end

end

lucky_dice = Die.new(['Andrew','Ian','Hayes','Ally'])
lucky_dice.sides
lucky_dice.roll

# --- --- Reflection --- ---

# What were the main differences between this die class and the last one you created
# in terms of implementation? Did you need to change much logic to get this to work?

# I didn't have to change the steps very much so that was nice - it made for a relatively
# easy challenge. But obviously since this was taking an array instead of a fixed integer
# there were some adjustments needed.

# What does this exercise teach you about making code that is easily changeable or modifiable?

# Well now that you mention it - that's exactly what this challenge illustrates. I think it
# would also be possible to roll the functionality from the other challenge into this challenge
# by expanding the if-else branch in initialize to include a path for accepting an array and a
# path for accepting a number of sides.

# What new methods did you learn when working on this challenge, if any?

# shoot - nothing new this time around.

# What concepts about classes were you able to solidify in this challenge?

# I experimented with class variables and attr_readers but neither seemed to do the trick here.
# I'm actually unsure why the attr_reader didn't pass the rspec so I'm going to do some additional
# research into both class variables and attr_readers.