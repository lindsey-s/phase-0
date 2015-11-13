# Simple Substrings

# I worked on this challenge [by myself].


# Your Solution Below

def welcome(address_string)

  address_string.downcase

  if address_string.include? "CA"
    "Welcome to California"
  else
    "You should move to California"
  end

end

puts welcome("13711 Melrose Place Lake Oswego OR 97035")
puts welcome("1538 12th Ave Apt # 2 San Francisco CA 94122")

#returns "Welcome to California" if the address includes "CA" and "You should move to California" otherwise.