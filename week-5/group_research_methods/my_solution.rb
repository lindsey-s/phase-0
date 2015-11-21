# Research Methods

# I spent [2] hours on this challenge.

# Person 1's solution

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

def my_array_finding_method(source, thing_to_find)
  inclusive_words = source.select { |word| word.include?(thing_to_find)}
end

p my_array_finding_method(i_want_pets, "t")

def my_hash_finding_method(source, thing_to_find)
  inclusive_pets = source.keep_if { |pet_name, age| age == thing_to_find }
  inclusive_pets.keys
end

p my_hash_finding_method(my_family_pets_ages, 3)

# Identify and describe the Ruby method(s) you implemented.

# my_array_finding_method:

# On line 11 I implemented an array method '.select' which creates a new array based on the block you pass it!
# As you can see, in the block after '.select' still on line 11 I was able to then use the '.include?' method to efficiently check if any item(s) in the new arracy included the 'thing_to_find'
# the last thing to mention is that I needed to call '.to_s' on each word in the 'inclusive_words' array in case the original array passed to the method inclduded an integer - otherwise '.include?' was not happy and I would get the error "3:Fixnum (NoMethodError)"

# my_hash_finding_method:

# In this one I used the hash method '.keep_if' on line 17
# This method iterates through the given hash and deletes key-value pairs that do not meet the criteria in block following
#   (Typing this out now, there might be another method in the ruby docs that doesn't delete the unused pairs. That might allowme to make this method a one-liner because then I wouldn't need to store the result of 'source.keep_if { |key, value| block }' in a new hash...I might look into this and am open to your suggestions
# then on line 18 I used the '.keys' hash method to return only the keys of my 'inclusive_pets' hash (so I got the pet names without the names)

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

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