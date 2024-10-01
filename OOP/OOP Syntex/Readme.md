# Ruby OOP Concepts

This repository demonstrates basic Object-Oriented Programming (OOP) concepts in Ruby. The project includes multiple classes and showcases key OOP principles:

## OOP Concepts Covered

- **Classes & Objects**: Each file defines a class (`Person`, `Animal`, `Car`, etc) and demonstrates object creation.
- **Encapsulation**: Instance variables (`@name`, `@age`, etc.) are used to encapsulate data within objects.
- **Inheritance**: The `Dog` class inherits from the `Animal` class and overrides methods.
- **Polymorphism**: Different classes (`Dog`, `Bird`) implement their own versions of the `make_sound` method.
- **Access Control**: Methods are marked as `private` or `public` to control access to certain behaviors.

## Project Structure
- `lib/`: Contains class definitions.
- `bin/run.rb`: Main script to run the project.

## How to Run
```bash
ruby bin/run.rb
```


## 1. Some Concepts - Instance Variables

### Why Use @?

**Distinguish from Local Variables:** In Ruby, instance variables must be prefixed with @ to distinguish them from local variables. Without the @, Ruby would treat them as local variables, which are limited in scope to the method where they are defined.

```ruby
def initialize(name)
  name = name  # This would NOT set the instance variable; it's a local variable
end
````

To assign the value to the instance variable, you need to use @:

````ruby
def initialize(name)
    @name = name  # This assigns the value to the instance variable
end
````

**Persist Across Methods:** Instance variables allow the object’s data to persist across different method calls. Local variables within a method are temporary and do not retain their values once the method finishes execution. Instance variables, however, hold the object's state and can be accessed by all instance methods of the class.

**Example of Local vs Instance Variable**
````ruby
class Example
  def set_local_var
    local_var = "I'm a local variable"
  end

  def set_instance_var
    @instance_var = "I'm an instance variable"
  end

  def show_vars
    puts local_var        # Error: local_var is not accessible here
    puts @instance_var    # Works: instance_var is accessible within all instance methods
  end
end

obj = Example.new
obj.set_instance_var
obj.show_vars  # Output: I'm an instance variable
````
In this example, local_var will only be available inside set_local_var, but @instance_var will be accessible from any method within the instance.


## 2. Some Concepts - Multiple Constructors

### Multiple Constructors in Ruby

In Ruby, you cannot directly define multiple constructors (like you would in languages such as Java or C++), but you can achieve the same effect using **default values**, **optional parameters**, or **factory methods**. Here's how you can mimic multiple constructors:

#### 1. Using Default or Optional Parameters

You can define a single constructor (`initialize`) that takes optional parameters, which allows flexibility in how you instantiate an object.

```ruby
class Person
  def initialize(name = "Unknown", age = 0)
    @name = name
    @age = age
  end

  def info
    puts "Name: #{@name}, Age: #{@age}"
  end
end

# Different ways to create objects
person1 = Person.new("Alice", 25)
person2 = Person.new("Bob")
person3 = Person.new

person1.info # Output: Name: Alice, Age: 25
person2.info # Output: Name: Bob, Age: 0
person3.info # Output: Name: Unknown, Age: 0
```

#### 2. Using Factory Methods

Another way to simulate multiple constructors is by defining **class-level factory methods**. These methods can call `new` with different sets of arguments, simulating multiple constructors.

```ruby
class Car
  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
  end

  def info
    puts "Make: #{@make}, Model: #{@model}, Year: #{@year}"
  end

  # Factory methods for different types of constructors
  def self.new_with_model_year(model, year)
    new("Default Make", model, year)
  end

  def self.new_with_make_model(make, model)
    new(make, model, 2020)
  end
end

# Create objects using different factory methods
car1 = Car.new_with_model_year("Civic", 2022)
car2 = Car.new_with_make_model("Toyota", "Corolla")

car1.info # Output: Make: Default Make, Model: Civic, Year: 2022
car2.info # Output: Make: Toyota, Model: Corolla, Year: 2020
```

#### 3. Using `initialize` with Conditionals

You can handle multiple constructors using conditionals inside the `initialize` method:

```ruby
class Product
  def initialize(*args)
    if args.size == 2
      @name = args[0]
      @price = args[1]
    elsif args.size == 1
      @name = args[0]
      @price = 100 # default price
    else
      @name = "Unknown"
      @price = 0
    end
  end

  def info
    puts "Product: #{@name}, Price: #{@price}"
  end
end

# Creating objects with different "constructors"
product1 = Product.new("Laptop", 1500)
product2 = Product.new("Tablet")
product3 = Product.new

product1.info # Output: Product: Laptop, Price: 1500
product2.info # Output: Product: Tablet, Price: 100
product3.info # Output: Product: Unknown, Price: 0
```

#### Summary

Ruby allows only **one constructor** per class (the `initialize` method), but you can simulate multiple constructors by:
  - Using **default or optional arguments**.
  - Using **factory methods** (custom class methods that return instances with different parameters).
  - Using **conditionals** inside the `initialize` method to differentiate based on the number or type of arguments.

These techniques give you flexibility similar to multiple constructors in other languages.
