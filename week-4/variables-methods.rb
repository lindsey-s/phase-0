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
