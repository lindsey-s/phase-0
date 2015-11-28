# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 3
# ============================================================

p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 3
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 2
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do  |element|
    if element.kind_of?(Array)
      element.map! do |inner|
          inner + 5
      end
    else
       element + 5
    end
end

p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map do |name|
    if name.kind_of?(Array)
      name.map do |nested_name|
        if nested_name.kind_of?(Array)
          nested_name.map {|super_nested| p super_nested + 'ly'}
        else
          p nested_name + 'ly'
        end
      end
    else
      p name + 'ly'
    end
end

# --- BONUS REFACTORED ---

startup_names.flatten.map { |name| p name + 'ly'}

# --- REFLECTION ---

# What are some general rules you can apply to nested arrays?

# remember where you are! My partner was very methodical in printing
# out the elements we were manipulating and creating along the way so
# we never had too many questions as to what exactly we were working
# with along the way. Also, .flatten is your friend.

# What are some ways you can iterate over nested arrays?

# You can continue to use if-else statements to branch down farther
# and farther. Or, if you know the exact array (as opposed to the general structure) you can access the values with their indices.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

# I'm loving .flatten! But that is an old friend at this point.
# To be honest I didnt' have much success in the ruby docs for
# iterating over nested and multi-dimensional arrays. I'm excited
# to see other people's solutions!
