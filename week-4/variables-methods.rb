puts "Enter first name:"
first_name = gets.chomp.capitalize
puts "Enter middle name:"
middle_name = gets.chomp.capitalize
puts "Enter last name:"
last_name = gets.chomp.capitalize
puts "Hello " + first_name + " " + middle_name + " " + last_name + "! It's lovely to meet you."

puts "So " + first_name + ", what's your favorite number?"
fav_number = gets.chomp.to_i
better_number = fav_number + 1
puts fav_number.to_s + " is a nice number but " + better_number.to_s + " is WAAAAAAY better!"

=begin

REFLECTION

* define_method solution here:
  https://github.com/lindsey-s/phase-0/blob/master/week-4/define-method/my_solution.rb

* return a formatted address solution here:
  https://github.com/lindsey-s/phase-0/blob/master/week-4/address/5-format-address/my_solution.rb

* defining math methods solution here:
  https://github.com/lindsey-s/phase-0/blob/master/week-4/math/6-math-methods/my_solution.rb

How do you define a local variable?

  You define a local variable simply by using the equal sign (or assigment operator) - like so:
  local_variable_you_want_to_name = "value to store in variable here!"

  As you can see, there is a naming convention to follow (namely that the local variable has no spaces and uses underscores if neeeded, begins wiht a lower case letter) and the value normally stored is a string thought it's possible to store integers or floats if you desire or need.

How do you define a method?

  You define a method with the keywords 'def' and 'end' surrounding your block of code. Here's an example of a simple method definition:

  def bestnumber
    puts "please enter your lucky number"
    number = gets.chomp
    bestnumber = number.to_i + 2
    return "The best number is #{bestnumber}! You fool!"
  end

  Of course it can be simpler if needed - I'm just having trouble thinking of a very simple method that wasn't an example in one of our readigs!

What is the difference between a local variable and a method?

  While a local variable is like a placeholder for a bit of data, a method is a block of code that can run. So sometimes methods use variables and they work together. But maybe the best answer here is the simplest: methods and variables are different classes of objects in ruby. So you can call a method on a string - but not a string on a method. Them's the rules son!

How do you run a ruby program from the command line?

  Easy! Type 'ruby' then the name of your file (don't forget the .rb file extension!) from your command line! You can run it if you are in the directory where the file is stored - OR in your irb "ruby sandbox!"

How do you run an RSpec file from the command line?

  To run RSpec files (test files) you type 'rspec' and the name of the RSpec file (again, including the .rb file extension) and hit enter. A common mistake here is to try to call rspec on the file you want to test - you don't need to do this because your RSpec file should require the name of the file you want to test. This means when you call rspec on a well-written RSpec file, you will already be testing the correct file :)

What was confusing about this material? What made sense?

  I struggled FOREVER with the address challenge because I wasn't using the 'return' keyword in my method. Instead I used 'puts' and thus my program outputted an identical string BUT it returned that annoying 'nil' value! Curses! Now I know for real that 'puts' returns 'nil' and that ruby will always evaluate the last line of code and output that to the console. OK lesson learned. Yikes.

=end