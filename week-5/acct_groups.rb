# --- Release 1: Pseudocode ---

# input: an list of everyone's names
# output: several groups of people with at least 3 and no more than 5 people in each group

# steps to solve the problem

# count the number of people in the entire group
# if the total is evenly divisible by 5
  # split the big group into x groups (where x equals the total number of people in the group divided by 5 - so each group will have 5 people in it)
  # every person gets a number assigned 1 through x (where x is the total number of groups)
  # every person 1 goes to group 1, every person 2 to group 2 and so on

# if the total is not evenly divisible by 5, but divisible by 4 repeat the steps above with groups of 4

# if the total is not evenly divisible by 5 or 4, then we'll want one more group than we would if we had a total evenly divisible by 5 ( total number of groups = (total number of people / 5) + 1) that way we will have at least three in every group and most groups will have 5 peopple
  # assign everyone a number as above!

# return all the new groups and their members

whole_cohort_hash = {"Jack Abernethy"=>0, "Mohammad Amin"=>0, "Zollie Barnes"=>0, "Reuben Brandt"=>0, "Dana Breen"=>0, "Bret Burnett"=>0, "Saundra Vanessa Castaneda"=>0, "Luis De Castro"=>0, "Nicolette Chambers"=>0, "Kerry Choy"=>0, "Nick Davies"=>0, "KB DiAngelo"=>0, "Adrian Diaz"=>0, "David Diaz"=>0, "Bob Dorff"=>0, "Michael Du"=>0, "Paul Dynowski"=>0, "Jenna Espezua"=>0, "Sean Fleming"=>0, "Marcel Haesok"=>0, "Albert Hahn"=>0, "Arthur Head"=>0, "Jonathan Huang"=>0, "Thomas Huang"=>0, "Alex Jamar"=>0, "Kevin Jones"=>0, "Steven Jones"=>0, "Cole Kent"=>0, "Caroline Kenworthy"=>0, "Calvin Lang"=>0, "David Ma"=>0, "Sean Massih"=>0, "Tom McHenry"=>0, "Alex Mitzman"=>0, "Lydia Nash"=>0, "Brenda Nguyen"=>0, "Matthew Oppenheimer"=>0, "Mason Pierce"=>0, "Joe Plonsker"=>0, "Mira Scarvalone"=>0, "Joseph Scott"=>0, "Chris Shahin"=>0, "Benjamin Shpringer"=>0, "Lindsey Stevenson"=>0, "Phil Thomas"=>0, "Gary Tso"=>0, "Ting Wang"=>0, "Clinton Weber"=>0, "Monique Williamson"=>0, "Regina Wong"=>0, "Hanah Yendler"=>0}

whole_cohort_array = ["Jack Abernethy", "Mohammad Amin", "Zollie Barnes", "Reuben Brandt", "Dana Breen", "Bret Burnett", "Saundra Vanessa Castaneda", "Luis De Castro", "Nicolette Chambers", "Kerry Choy", "Nick Davies", "KB DiAngelo", "Adrian Diaz", "David Diaz", "Bob Dorff", "Michael Du", "Paul Dynowski", "Jenna Espezua", "Sean Fleming", "Marcel Haesok", "Albert Hahn", "Arthur Head", "Jonathan Huang", "Thomas Huang", "Alex Jamar", "Kevin Jones", "Steven Jones", "Cole Kent", "Caroline Kenworthy", "Calvin Lang", "David Ma", "Sean Massih", "Tom McHenry", "Alex Mitzman", "Lydia Nash", "Brenda Nguyen", "Matthew Oppenheimer", "Mason Pierce", "Joe Plonsker", "Mira Scarvalone", "Joseph Scott", "Chris Shahin", "Benjamin Shpringer", "Lindsey Stevenson", "Phil Thomas", "Gary Tso", "Ting Wang", "Clinton Weber", "Monique Williamson", "Regina Wong", "Hanah Yendler"]

# --- Release 2: Initial Solution ---

def accountability_groups(everyone) # takes a hash

  if everyone.length / 5 == 0
    total_groups = everyone.length /  5
  else
    total_groups = everyone.length / 4 + 1
  end

  group_hash = {}

  everyone.each do |name, group_num|
    group_num += rand(1..total_groups)
    group_hash[name] = group_num
  end

  p group_hash.sort_by { |name, group_num| group_num }

end

# This is my solution after 3 hours - this is not going well! My method doesn't account for how amny people are in each group yet - but it is random. I need to try this with a loop but am struggling to continually add to the same hash or array inside the loop.

# Additional Pseudocode

=begin

Issue each persona a number 1 through total groups
add each person to hash
group hash by group number

Each person starts with group num = 0
add each person to hash individually
As they are added, add their group num + random number in 1..total groups
group hash by group number

Each person starts with group num = 0
establish new hash of nested arrays
while group_num.size < (whole_hash.size / total_groups)
  add each person to hash and add a number 1..total groups to their group number
  end
repeat loop for all items in hash
group by group_num

=end

# --- Release 3: Add Complexity ---

# --- Release 4: Refactor ---

#def accountability_groups(everyone) # takes a hash

#  if everyone.length / 5 == 0
#    total_groups = everyone.length /  5
#  else
#    total_groups = everyone.length / 4 + 1
#  end

#  x = everyone.length / total_groups

#  group_hash = {}

#  while group_hash.size < x
#    everyone.each do |name, group_num|
#    group_num += rand(1..total_groups)
#    end
#  end

#  p everyone
#  p group_hash.group_by { |name, group_num| group_num }

# end

#accountability_groups(whole_cohort_hash)

# --- Release 5: Driver Code ---

accountability_groups(whole_cohort_hash)

# --- Release 6: Reflection ---

# What was the most interesting and most difficult part of this challenge?

# This challenge was pretty awful. After 4 hours I have a barely working method that has no control for the total number of people in each group.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?

# I'm disheartened to be honest - I honestly don't know if the problem is in pseudocoding or in simply trying to execute this code. I plan to have a one on one with our instructor and see if I can figure out the control flow loop for group size and iteration of adding the random group number.

# Was your approach for automating this task a good solution? What could have made it even better?

# nope. It could be better if it actually solved the problem!

# What data structure did you decide to store the accountability groups in and why?

# I think a hash is the correct structure since we want to store a name and a group number. I'm happy with the output of the program (though it could be prettier) which returns each person in their own array with their group number and each person is grouped witht their group. However, I'm sure there's another ruby method that would return nested arrays with every group in their own array as well.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

# still loving the group_by method - see my blog post!