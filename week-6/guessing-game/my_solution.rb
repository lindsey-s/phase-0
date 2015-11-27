# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess

    if @guess < @answer
      p :high
    elsif @guess > @answer
      p :low
    elsif @guess == @answer
      solved?
      p :corret
    end
  end

  def solved?
    last_guess = @guess.dup

    if last_guess == @answer
      true
    else last_guess != @answer
      false
    end
  end

end

new_game = GuessingGame.new(10)

new_game.guess(8)
new_game.guess(12)
#new_game.guess(10)
# new_game.solved?


# Refactored Solution






# Reflection