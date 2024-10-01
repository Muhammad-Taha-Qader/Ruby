require_relative "animal"
##Polymorphism

class Bird < Animal
  def make_sound
    puts "Chirp!"
  end
end

# def make_animal_sound(animal)
#   animal.make_sound
# end

# dog = Dog.new("Rover", "Dog")
# bird = Bird.new("Tweety", "Bird")

# make_animal_sound(dog)  # Output: Woof!
# make_animal_sound(bird) # Output: Chirp!
