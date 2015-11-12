# I worked on this challenge [with: Regina Wong].


# Your Solution Below

# According to triangle inequality theorem if the triangle sides do NOT pass all three tests:
# a + b > c
# b + c > a
# a + c > b
# then it must not be a triangle. So we added one test for the INVERSE of those tests
# and one test for 0 input, to return false
# otherwise it must be a triangle, so else is true!

def valid_triangle?(a, b, c)
 if (a + b < c) || (b + c < a) || (a + c < b)
  return false
 elsif a == 0 || b == 0 || c == 0
  return false
 else
  return true
 end
end


puts valid_triangle?(3, 4, 5)
puts valid_triangle?(2, 2, 2)
puts valid_triangle?(0, 1, 0)
puts valid_triangle?(0, 0, 0)