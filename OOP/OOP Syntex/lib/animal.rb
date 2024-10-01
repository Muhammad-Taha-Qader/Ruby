#Defining a Class

class Animal
  # Constructor method
  def initialize(name, species)
    @name = name    # Instance variable
    @species = species
  end

  # Instance method
  def make_sound
    puts "Animal sound"
  end

  # Getter method for name
  def name
    @name
  end

  # Setter method for name
  def name=(name)
    @name = name
  end
end
