# Leap Years

# I worked on this challenge [by myself / Regina Wong].


# Your Solution Below

def leap_year?(year)
  if year%4 == 0 && ( year%100 != 0 || year%400 == 0 )
    true
  else
    false
  end
end

puts leap_year?(2000) # => true
puts leap_year?(2001) # => false
puts leap_year?(400) #=> true
puts leap_year?(100) #=> false