# Virus Predictor

# I worked on this challenge [with: Beni Shpringer].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative loads another file from the same directory.
# this means you have access to variables, methods and other data in the relative file
# in your working file or program

#population density is number of people per square mile as of 2012
#this data is updated every year with estimates from a 10 year census

#=======================================================================
# INITIAL SOLUTION & REFACTORING WITH GUIDE

require_relative 'state_data'

class VirusPredictor
  # initializes the class, when a new object is created it sets up the instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # this calls 2 private methods pedicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths #(@population_density, @population, @state)
    speed_of_spread #(@population_density, @state)
  end

  private
  # based on population_density this methods determines how many whole people are going to die!!! eek! (returns a string)
  def predicted_deaths #(population_density, population, state)

    # Pro Tip: You can set a variable equal to the RESULT of a conditional statement.
    number_of_deaths = if @population_density >= 200
                          (@population * 0.4).floor
                        elsif @population_density >= 150
                          (@population * 0.3).floor
                        elsif @population_density >= 100
                          (@population * 0.2).floor
                        elsif @population_density >= 50
                          (@population * 0.1).floor
                        else
                          (@population * 0.05).floor
                        end


    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # based on population_density this method defines how fast the virus will spread and puts half of the string
  def speed_of_spread #(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # speed = 0.0
    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"
  end

end


def new_report(state_data_hash)
  raise ArguementError.new("Invalid hash") unless state_data_hash.size == 51

  state_data_hash.each do |state_name, state_data|
    current_state = VirusPredictor.new(state_name,  state_data[:population_density], state_data[:population])

    current_state.virus_effects
  end
end

new_report(STATE_DATA)

# DRIVER CODE

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

#=======================================================================
# Reflection

# What are the differences between the two different hash syntaxes shown in the state_data file?

# The first rocket notation (using the => symbol) can be used for any type of object.
# However, the colon notation can only be used for integers and symbols.

# What does require_relative do? How is it different from require?

# As we stated above, require_relative loads another file from the same directory.
# this means you have access to variables, methods and other data in the relative file
# in your working file or program. When you use require on its own, you must specify
# the entire path and it's useful if the file you want to load is not in the same
# directory.

# What are some ways to iterate through a hash?

# There are plenty of fun ways to iterate through a hash using built in hash methods
# in the ruby docs. We used each in our solution but all the familiar guys like map work
# as well. They operate slightly differently on hashse becuase you're able to use both
# the key and value.

# When refactoring virus_effects, what stood out to you about the variables, if anything?

# nothing... they weren't needed

# What concept did you most solidify in this challenge?

# I think this challenge came way too late - we already had a lot of challenges in the
# ruby weeks that required us to use and research hashes. This was not much new but it was
# fun to play around with the class and I learned some cool stuff from the guide.