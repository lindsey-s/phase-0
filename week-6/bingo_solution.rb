# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [4] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # establish a new array with each letter stored as an item
  # choose a letter at random
  # choose a number between 1 and 100 at random
  # return the number and letter together as the result of a "bingo call"

# Check the called column for the number called.
  # check each row
  # only look in the appropriate column as corresponds to the letter called

# If the number is in the column, replace with an 'x'
  # take the location from the the above steps
  # reassign the value to 'x'

# Display a column to the console
  # print a single column by accessing the letter called's index
  # print each number on its own line

# Display the board to the console (prettily)
  # print each row with nice spacing and on its own line

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def call

#     @bingo_letters = ['B', 'I', 'N', 'G', 'O']
#     @bingo_call = @bingo_letters.sample + rand(1..100).to_s
#     p "The call is: #{@bingo_call}"

#     @call_letter = @bingo_call.slice(0,1)
#     @call_number = @bingo_call.slice(1,2).to_i

#     if @call_letter == 'B'
#       @call_index = 0
#     elsif @call_letter == 'I'
#       @call_index = 1
#     elsif @call_letter == 'N'
#       @call_index = 2
#     elsif @call_letter == 'G'
#       @call_index = 3
#     elsif @call_letter == 'O'
#       @call_letter = 4
#     end

#   end

#   def check
#     call
#     @checked_board = @bingo_board.dup

#     @checked_board.each do |row|
#         if row[@call_index] == @call_number
#           row[@call_index] = 'x'
#         end
#     end

#     display_board
#   end

#   def display_board
#     p 'B   I   N   G   O'
#     p @checked_board[0]
#     p @checked_board[1]
#     p @checked_board[2]
#     p @checked_board[3]
#     p @checked_board[4]
#     end

# end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @bingo_letters = ['B', 'I', 'N', 'G', 'O']

    @bingo_call = @bingo_letters.sample + rand(1..100).to_s
    p "The call is: #{@bingo_call}"

    @call_letter = @bingo_call.slice(0,1)
    @call_number = @bingo_call.slice(1,2).to_i

    if @call_letter == 'B'
      @call_index = 0
    elsif @call_letter == 'I'
      @call_index = 1
    elsif @call_letter == 'N'
      @call_index = 2
    elsif @call_letter == 'G'
      @call_index = 3
    elsif @call_letter == 'O'
      @call_index = 4
    end

  end

  def check
    call
    @checked_board = @bingo_board.dup

    @checked_board.map do |row|
        if row[@call_index] == @call_number
          row[@call_index] = 'x'
        end
    end

    display_board
  end

  def display_board
    p 'B    I    N    G    O'
    @checked_board.each do |row|
      p "#{row[0]}   " + "#{row[1]}   " + "#{row[2]}   " + "#{row[3]}   " + "#{row[4]}"
    end
  end

end

# DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.check

#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

# the pseudocoding was not hard but I suspect that's because we had a lot of guidance in
# the outline that was already in the file. Without that, I wouldn't have thought to break
# out two steps for looking in the appropriate column as well as looking for the correct
# number called.

# What are the benefits of using a class for this challenge?

# A class is nifty for this challenge because we don't have to specify every step in one
# method so that we can access and re-use variables. Instead we can leverage instance
# variables within the class.

# How can you access coordinates in a nested array?

# You can either specify the exact location (if you know it) using the same old bracket
# notation we're used to and just adding as many layers as you need to get down into the
# nest. Or you can iterate through the nested items looking for search criteria in your
# block using our old array method pals #each and #map.

# What methods did you use to access and modify the array?

# I stuck to #each and #map this time around. I wanted to play with more but I just ran
# out of time!

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

# learned another variation of the #slice method for strings. You can specify which index
# you want to start with and then a range for the number of indecies (or characters) to
# cycle through. This returns a new string with the characters you specified or nil. It's
# still giving me some trouble since it sometimes returns nil in my current program based on
# the number of characters (single vs double-digit integers for the bingo call) and I just
# ran out of time to get this refactored and corrected.

# How did you determine what should be an instance variable versus a local variable?

# any variable that I wanted access to in another method in the class was an instance
# variable - I used very few local variables and I thinkt that's actually helpful in terms
# of readability of the code.

# What do you feel is most improved in your refactored solution?

# I fixed a bug (I had the wrong variable name listed for 'O' on line 56 of my initial
# solution!) and was able to iterate through the array to DRY up the #display_board
# method. I would have liked to search through the ruby docs some more and work on
# keeping track of my checked_board variable in a more permanent way within one game.
