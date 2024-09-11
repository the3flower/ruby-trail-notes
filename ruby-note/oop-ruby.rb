=begin
  [Object Oriented Programming]
  - Ruby, almost everything is an object, 
  except for method, blocks and variables. 
=end

## Class
# CamelCase
class GoodDog

end

# Create an object (instance) of the class
sparky = GoodDog.new # 'sparky' is an object(instance) created from class

## Method
# snake_case
# represent action and behavior
def car_details
  puts "This car is a #{@make} #{@model}."
end

## Class + Method
#
class Car
  def initialize(make, model) # initialize method set initial state, this like __init__ in python
    @make = make # <- instance variable
    @model = model
  end

  def details
    puts "This car is a #{@make} #{@model}."
  end
end
# ** initialize state for ensure object has necessery data
# ** initialize method get called every time we instantiate a new object 

my_car = Car.new("Toyota", "Corolla") # those two string will pass to 'initialize' method first
my_car.details
# Output: "This car is a Ford Mustang."

## Composition
# one object "has" another object as part of its state or behavior.
class Engine
  def start
    puts "Engine starting..."
  end
end

class Car
  def initialize
    @engine = Engine.new  # Engine instance is created when Car is created
  end

  def start
    @engine.start
  end
end

my_car = Car.new
my_car.start  # Engine is an integral part of Car

## Acecssor Method (1)
# Getter & Setter
# used to 'retrieve' and 'modify' an object attribute after initialize
class Person

  def initialize(name, age)
    @name = name
    @age = age
  end

  # Getter method for @name
  def name
    @name
  end

  # Setter method for @name
  def name=(new_name)
    @name = new_name
  end
end

person = Person.new("John", 30)

# Use getter methods to access the variables
puts person.name  # Output: John
# Use setter methods to modify the variables
person.name = "Doe"
puts person.name  # Output: Doe

## Acecssor Method (2)
# Getter & Setter but create with buit-in 'attr_accessor'
class GoodDog
  attr_accessor :name # <- buit-in getter & setter method for @name

  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.name            # => "Sparky"
sparky.name = "Spartacus"
puts sparky.name            # => "Spartacus"

## Class Variables
# shared across instances, subclasses
# @@variable_name
class GoodDog
  @@number_of_dogs = 0 # <- define class variable here

  def initialize
    @@number_of_dogs += 1
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end
end

puts GoodDog.total_number_of_dogs   # => 0

dog1 = GoodDog.new
dog2 = GoodDog.new

puts GoodDog.total_number_of_dogs   # => 2
# * initial method will called every time that create class, so 'total_number_of_dogs' will be 2

## Constants
# value in Constants never change
# VARIABLE_NAME (upper case)
class GoodDog
  DOG_YEARS = 7 # <- define Constants here

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age  = a * DOG_YEARS
  end
end

sparky = GoodDog.new("Sparky", 4)
puts sparky.age             # => 28

## Self
# refer to getter & setter method