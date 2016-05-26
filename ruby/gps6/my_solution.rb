# Virus Predictor

# I worked on this challenge Audrey Kang.
# We spent ~90 minutes on this challenge.

require_relative 'state_data'

class VirusPredictor

  #This is going to give attributes to each instance when they are created.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #Calls other two instance methods below.
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density)
  end

  private

  #Conditional logic on population density.
  #Output is a string which includes the state and number of deaths.
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    case population_density
    when 200..9999999
      number_of_deaths = (population * 0.4).floor
    when 150..199
      number_of_deaths = (population * 0.3).floor
    when 100..149
      number_of_deaths = (population * 0.2).floor
    when 50..99
      number_of_deaths = (population * 0.1).floor
    else
      number_of_deaths = (population * 0.05).floor
    end
=begin
    if population_density >= 200
      number_of_deaths = (population * 0.4).floor
    elsif population_density >= 150
      number_of_deaths = (population * 0.3).floor
    elsif population_density >= 100
      number_of_deaths = (population * 0.2).floor
    elsif population_density >= 50
      number_of_deaths = (population * 0.1).floor
    else
      number_of_deaths = (population * 0.05).floor
    end
=end
    print "#{state} will lose #{number_of_deaths} people in this outbreak"

  end

  #Conditional logic on population density to determine rate of outbreak.
  def speed_of_spread(population_density) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    case population_density
    when 200..9999999
      speed += 0.5
    when 150..199
      speed += 1
    when 100..149
      speed += 1.5
    when 50..99
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
=begin
We are going to create a loop that will
for every new state do
pull state name
pull population density and population
=end


STATE_DATA.each do |state, value|
  instance = VirusPredictor.new(state, value[:population_density], value[:population])
  instance.virus_effects
end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# This first hash syntax uses a string (as key) with a hash rocket, which is helpful because when we set it as an instance attribute it's automatically what we need it to be instead of having to convert it.
# The second (nested) hash syntax uses a symbol (as key).

# What does require_relative do? How is it different from require?
# Require_relative is a subset of reuire, and is a nice "short hand" that just searches the a basic directory path.
# Require allows you to use a more detailed path if the file in question isn't in the directory, but it's a little messier to type out.

# What are some ways to iterate through a hash?
# Some methods that iterate (as in not just pass over but actually do something via a block) through an entire hash - 
# .each, .each_pair, .each_key, and .each_value
# .keep_if
# .new
# .delete, delete_if
# .fetch
# .merge
# .reject
# .select
# .update

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# I actually struggled with refactoring quite a bit. I'm still not certain the best way to make lean/dry code.
# Our guide had to take off and unfortunately my partner wasn't very clear on refactoring either, so we just tried to find places in the code where there was redundancy of variables and attributes.
# For example, the speed_of_spread method didn't actually need two argument passed in, the "state" attribute wasn't even used in that method.

# What concept did you most solidify in this challenge?
# I think I most solidified how to iterate over slightly complex things, like nested data structures. 
# It takes significant brain power to comprehend what is going on while calling a method on a hash and how your pblock parameters work to access the nested data, etc.


