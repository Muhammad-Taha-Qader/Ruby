require_relative "../lib/animal"
require_relative "../lib/dog"
require_relative "../lib/cat"
require_relative "../lib/bird"

##  Creating an Object

# Create an instance of the Animal class
dog = Animal.new("Buddy", "Dog")

# Access instance variables via getter methods
puts dog.name # Output: Buddy

# Modify the instance variable via setter methods
dog.name = "Max"
puts dog.name # Output: Max


## Inheritance
p "Inheritance"
dog = Dog.new("Max", "Dog")
dog.make_sound # Output: Woof!


## Encapsulation and Access Modifiers
p "Encapsulation and Access Modifiers"
cat = Cat.new("Whiskers", "Cat")
cat.purr   # Output: Purr...
# cat.scratch  # Error: private method `scratch' called


## Polymorphism
p "Polymorphism"
def make_animal_sound(animal) #It's same like assiging refernce of drived class to a base class pointer 
#in C++, commanly base class functions should be called as base class ptr is being used but here 
#comes the Polymorphism
  animal.make_sound
end

dog = Dog.new("Rover", "Dog")
bird = Bird.new("Tweety", "Bird")

make_animal_sound(dog)  # Output: Woof!
make_animal_sound(bird) # Output: Chirp!