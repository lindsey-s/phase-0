#Attr Methods

# I worked on this challenge [by myself]

# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: a string (name)
# Output: a greeting (string)
# Steps:

  # initialze two classes:
    # NameData - to store the name
    # Greetigns - to use the variable from NameData and print a greeting
                # using that variable in the greeting

  # store my name in NameData class
  # include a variable that is accessible outside the class to be shared in other classes

  # set up the Greetings class to execute code from the NameData class
  # store the result of that code in a new variable accessible only in the Greetings class
  # set up a block of code to print the greeting to the console including my name

class NameData

attr_reader :name

  def initialize
    @name = 'Lindsey'
  end

end


class Greetings

  def initialize
    @new_name = NameData.new.name
  end

  def greet
    p "Hello #{@new_name}! How wonderful to see you today."
  end

end

greet_lindsey = Greetings.new
greet_lindsey.greet

# --- Reflection ---

# Release 1 Reflection:
    # What are these methods doing?

      # these methods are setting instance variables and then they are getting new values for
      # those same instance variables, in essence, updating those instance variables

    # How are they modifying or returning the value of instance variables?

      # using the following 'setter' syntax to define a method as such:
      # def method_name=(updated_variable_name)
      # here the equal sign is mostly for ease of reading and reminding the programmer
      # that running this method will update the instance variable. Of course it doesn't
      # actually update that value, you still need the re-assignment code block. This syntax
      # is referred to as syntactical sugar among rubists.

# Release 2 Reflection:

    # What changed between the last release and this release?

      # This code has one less method because it has an attr_reader defined (:age)

    # What was replaced?

      # the method #what_is_age was replaced with the attr_reader :age

    # Is this code simpler than the last?

      # Not by much but yes it is. I like that it looks less repetitive even though
      # we've only replaced one method. I can see that if we are frequently using attr
      # variables instead of those simple getter/setter methods, we'll soon be used to
      # reading the properties of the class in scanning through the one-line attr syntax.

# Release 3 Reflection:

    # What changed between the last release and this release?

      # we no longer need the getter method (change_my_age) because we have a new
      # attr_writer method to replace it.

    # What was replaced?

      # oops - see above!

    # Is this code simpler than the last?

      # Yes - again the same lessons apply that I articulated in the Release 2 Reflection -
      # this time we can see the difference between setter (attr_reader) and getter (attr_
      # writer) methods.

# Release 4 Reflection:

    # What changed between the last release and this release?

      # We've added an attr_accesssor to the file

    # What was replaced?

      # this replaces the attr_reader and attr_writer. Essentially they've been combined
      # in this case since we had both a reader and writer method of the same instance
      # variable. This DRYs up our code a bit.

    # Is this code simpler than the last?

      # Yep! All applies as above.

# Release 6 Reflection:

    # What is a reader method?

      # a reader method is a method that defines an instance variable only
      # the sytax is as follows:
      # def reader(variable)
      #   @variable
      # end

    # What is a writer method?

      # a writer method allows you to update or change the variable value
      # the sytax is as follows:
      # def writer=(variable)
      #   @variable = variable
      # end

    # What do the attr methods do for you?

      # the three attr methods (attr_reader ; attr_writer ; and attr_accessor) allow
      # you to omit reader and writer methods and simply establish objects with instance
      # variable properties in single lines.

    # Should you always use an accessor to cover your bases? Why or why not?

      # no - the flexibility in using all three attr methods is best. It allows you to
      # prevent variables from being overwritten as well.

    # What is confusing to you about these methods?

      # nothing so far... but I'm sure I'll run into something!
