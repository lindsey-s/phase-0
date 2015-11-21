# Research Methods

# I spent [3] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  inclusive_words = source.select { |word| word.to_s.include?(thing_to_find)}
end

p my_array_finding_method(i_want_pets, "t")

def my_hash_finding_method(source, thing_to_find)
  inclusive_pets = source.dup
  inclusive_pets.keep_if { |pet_name, age| age == thing_to_find }
  inclusive_pets.keys
end

p my_hash_finding_method(my_family_pets_ages, 3)

# Identify and describe the Ruby method(s) you implemented.

# my_array_finding_method:

# I implemented an array method '.select' which creates a new array based on the block you pass it!
# As you can see, in the block after '.select' still on line 11 I was able to then use the '.include?' method to efficiently check if any item(s) in the new arracy included the 'thing_to_find'
# the last thing to mention is that I needed to call '.to_s' on each word in the 'inclusive_words' array in case the original array passed to the method inclduded an integer - otherwise '.include?' was not happy and I would get the error "3:Fixnum (NoMethodError)"

# my_hash_finding_method:

# In this one I used the hash method '.keep_if' (after first duplicating the hash into a new hash so the method is NOT destructive)
# This method iterates through the given hash and deletes key-value pairs that do not meet the criteria in following block
# then I used the '.keys' hash method to return only the keys of my 'inclusive_pets' hash (so I got the pet names without the names)

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.map! do |x|
   if x.is_a?(Integer)
     x + thing_to_modify
   else
    x
   end
  end
end
my_array_modification_method!(i_want_pets, 10)
print i_want_pets

def my_hash_modification_method!(source, thing_to_modify)
  source.each{|k, v| source[k] = v + thing_to_modify }
end

my_hash_modification_method!(my_family_pets_ages, 10)
print my_family_pets_ages


# Identify and describe the Ruby method(s) you implemented.
# For my_array_modification_method! I implemented two methods.  The first one is .map!.  I chose the bang ('!') because the non destructive (map) element creates a new array.  .map! will alter the current array with code a block.  In this instance I did an IF statement in the block.  I checked to see if the element is an integer with .is_a?.  This will return true if the class passed through is true.  So if it is an integer it will add a number to the integer element.
#
#For my_hash_modification_method!  All I used was the .each iterator and modified each value with the number passed through as the arguement.


# Person 3
def my_array_sorting_method(source)
  #Assumes that source this is already an array
  #Most basic argument
  sorted_array = source.sort_by {|x| x.to_s.downcase}
  sorted_array
end

p my_array_sorting_method(i_want_pets)

def my_hash_sorting_method(source)
   # source.to.sort_by! {|name, age| age}
   # puts source
   sorted_hash = source.sort {|x,y| x[1] <=> y[1]}
   puts sorted_hash
end

p my_hash_sorting_method(my_family_pets_ages)

#In the array method, the original source is sorted alphabetically by using the sort_by method, distinguishing that each element be alphabetical in a string regardless of case.
#The hash method is a bit trickier, breaking the elements of the source into their own arrays and then ordering those original hash elements by their values (in this case, the ages of the animals).


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if{|el| el.to_s.include?(thing_to_delete)}
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if{|k,v| k.to_s.include?(thing_to_delete)}
end
puts my_array_deletion_method!(i_want_pets,'a')
puts my_hash_deletion_method!(my_family_pets_ages,'a')

# Identify and describe the Ruby method(s) you implemented.
# delete_if: destructivly deletes if passed false on each element
#include?: return true or false if the element includes the argument passed
#to_s: converts the element to a string


# Person 5
#def my_array_splitting_method(source)
#  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
#end

#def my_hash_splitting_method(source, age)
#  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
#end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#