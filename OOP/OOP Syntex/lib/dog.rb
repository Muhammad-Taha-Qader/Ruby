require_relative "animal"
## Inheritance

# Inherit from the Animal class
class Dog < Animal
  # Override the make_sound method
  def make_sound
    puts "Woof!"
  end
end

# Create an instance of Dog
# dog = Dog.new("Max", "Dog")
# dog.make_sound # Output: Woof!
