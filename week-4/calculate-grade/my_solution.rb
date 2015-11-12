# Calculate a Grade

# I worked on this challenge [with: Regina Wong].


# Your Solution Below
def get_grade(average)
    if (average >= 90 && average <=100) == true
        return "A"
    elsif (average >= 80 && average <=89) == true
        return "B"
    elsif (average >= 70 && average <=79) == true
        return "C"
    elsif (average >= 60 && average <=69) == true
        return "D"
    elsif (average >= 0 && average <=59) == true
        return "F"
    else
        return "Please enter a numeric value between 0 - 100"
    end
end

puts get_grade(92)
puts get_grade(83)
puts get_grade(74)
puts get_grade(66)
puts get_grade(23)
puts get_grade(-11)
puts get_grade(39495)
puts get_grade(0)