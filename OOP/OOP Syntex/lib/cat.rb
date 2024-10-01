require_relative "animal"
## Encapsulation and Access Modifiers

class Cat < Animal
  # Private method
  private
  def scratch
    puts "Scratch!"
  end

  # Public method
  public
  def purr
    puts "Purr..."
  end
end

# cat = Cat.new("Whiskers", "Cat")
# cat.purr   # Output: Purr...
# # cat.scratch  # Error: private method `scratch' called
