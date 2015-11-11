# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => 170
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => expecting keyword end prior to the end-of-input (line 170, the last line of code in this file)
# 5. Where is the error in the code?
# => it's at the end of the file because ruby is going through the whole file before it assumes that we didn't include the end keyword the syntax requires
# 6. Why did the interpreter give you this error?
# => the while keyword has created an infinite loop here (I think) because it will always be true since we haven't given it a parameter it can ever not meet.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# => 35
# 2. What is the type of error message?
# => NameError
# 3. What additional information does the interpreter provide about this type of error?
# => we have an undefined local variable (south_park)
# 4. Where is the error in the code?
# => right after south_park
# 5. Why did the interpreter give you this error?
# => we specified a local variable (or called it) but haven't told ruby what it equals. we'd need to first assign south_park before calling it

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# => 50
# 2. What is the type of error message?
# => NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# => we have an undefined method 'cartman'
# 4. Where is the error in the code?
# => right after cartman
# 5. Why did the interpreter give you this error?
# => like the NameError in the example above, we have called an object without first telling ruby what we mean it to be. In this case, a method without first defining it.

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => 65
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => we have given the wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# => after cartmans_phrase on line 65
# 5. Why did the interpreter give you this error?
# => we should have defined our method with a parameter if we meant to pass arguments to it later one (i.e. on line 69)

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# =>  84
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => again we've given the wrong number of argumnets (0 for 1 this time)
# 4. Where is the error in the code?
# => right after cartman_says on line 84
# 5. Why did the interpreter give you this error?
# => I think it's really telling us that we should have passed the method an argument when we called it on line 88 and it occurs to me now that both this error and the previous are really pointing out two ways we could fix our methods based on our intention. If we inteded the methods to be called using arguments, we must specify the correct number or parameters when we define it. Then, if we have defined our methods with parameters, we'll need to pass them arguments in the correct number when we call them.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => 105
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => again we've given the wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# => in our parameters on line 105
# 5. Why did the interpreter give you this error?
# => on line 105 we've asked for 2 parameters but passed only 1 argument on line 109

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => 124
# 2. What is the type of error message?
# => TypeError
# 3. What additional information does the interpreter provide about this type of error?
# => we cannot coerce a Fixnum into a string
# 4. Where is the error in the code?
# => at the * operator
# 5. Why did the interpreter give you this error?
# => because we cannot multiply the Fixnum 5 by a string... we would need to tell ruby we want to covert the integer 5 into the string 5. Alternately, here we could reverse the string and integer if we wanted to print the string 5 times consecutively.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => 139
# 2. What is the type of error message?
# => ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# => surprise surprise - we tried to divide something by 0
# 4. Where is the error in the code?
# => at the end of line 139 when we divide by 0
# 5. Why did the interpreter give you this error?
# => well it's just bad math - you can't divide by zero! Before you get irrational or imaginary on me - remember we're only doing integer division in ruby unless we specify the numbers are floats!

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => 155
# 2. What is the type of error message?
# => LoadError
# 3. What additional information does the interpreter provide about this type of error?
# => ruby can't find such a file (duh, cartman would never write an essay!)
# 4. Where is the error in the code?
# => in the require_relative method
# 5. Why did the interpreter give you this error?
# => there is no such file anywhere named cartmans_essay.md


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin

Which error was the most difficult to read?

  The first one - definitely just getting this file up and running was confusing. After figuring out the end of file line number though - it made it easier to figure out the rest because I remembered the very basic ruby rules we have learned and kept them top of mind. But I do find infitine loops the most tricky to recognize. So I'll be practicing with these.

How did you figure out what the issue with the error was?

  I had to look up the while keyword, then the true boolean - then infinite loops! This tripped me up in my DBC interview as well actually and I suspect I'll need more practice with these in general.

  I also found some sweet spots in the Ruby Docs and will be getting better acquainted with these in the coming days I am sure!

Were you able to determine why each error message happened based on the code?

  Yes actually! I was excited this was the case and expect it's partially becuase we had similar errors presented one after the other.

When you encounter errors in your future code, what process will you follow to help you debug?

  Well I'll be reading the errors now that I am better able to parse them. In the past I had been essentially scanning them and not really dissecting them because I was trying to intuit my way to fixing the code. I also suffered from not believing the error code and thus missing what ruby was trying to point out to me from the start.

=end