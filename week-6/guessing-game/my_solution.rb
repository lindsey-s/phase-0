# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [3] hours on this challenge.

# Pseudocode

# Input: a new guessing game (takes an integer); a new guess (takes an integer)
# Output:
# Steps:


# Initial Solution

# class GuessingGame

#   def initialize(answer)
#     @answer = answer
#   end

#   def guess(guess)
#     @guess = guess
#     if @guess > @answer
#       p :high
#     elsif @guess < @answer
#       p :low
#     else @guess == @answer
#       p :correct
#     end
#   end

#   def solved?
#     if @guess == @answer
#       true
#     else
#       false
#     end
#   end

# end

# new_game = GuessingGame.new(10)

# new_game.guess(8)
# new_game.guess(12)
# new_game.guess(10)
# new_game.solved?

# Refactored Solution

class GuessingGame

  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if @guess > @answer
      p :high
    elsif @guess < @answer
      p :low
    else
      p :correct
    end
  end

  def solved?
    p @guess == @answer ? true : false
  end

end

new_game = GuessingGame.new(21)

new_game.guess(8)
new_game.guess(12)
new_game.guess(28)
new_game.guess(7)
new_game.guess(21)
new_game.solved?

# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

# This is an odd question! haha! I don't think instance variables and methods mimic actions -
# but I suppose in the fact that you can re-use them again and again as well as customize
# them with inheritance properties - they mimic the way we all use real objects... it's
# a stretch to me!

# When should you use instance variables? What do they do for you?

# Instance variables are particularly usefule when you want to use the same variables in
# more than one method in a class.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

# Flow control is specifying instructions for a set of conditions. If-elsif-else statements,
# while and for loops, and ternary conditionals are all examples of flow control. I had no
# trouble in this challenge with flow control.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?

# Symbols are immutable, like integers, but flexible like strings. We can make symbols
# anything we want (like strings) but cannot make them "point" to anything (like integers) -
# they are always representing themselves. This code is using symbols to represent fixed
# states (higher than the answer, or lower than the answer, or exactly the answer).
