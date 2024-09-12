=begin
  [Object Oriented Programming]
  - Ruby, almost everything is an object, 
  except for method, blocks and variables.

  Principles of OOP:
    Encapsulation: 

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

## Acecssor Method (1) (manually)
# Getter & Setter
# used to 'retrieve' and 'modify' an object attribute after initialize
class Person

  def initialize(name, age)
    @name = name
    @age = age
  end
a
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

## Self (1)
# refer to getter & setter method
# built-in for getter and setter method:
#   attr_reader: getter method
#   attr_writer: setter method
#   attr_accessor: getter and setter method
# * need to have setter and getter method
class GoodDog
  attr_accessor :name, :height, :weight # <- This is getter and setter method in one

  def initialize(n, h, w)
    self.name   = n
    self.height = h
    self.weight = w
  end

  def change_info(n, h, w)
    self.name   = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end
end

## Self (2)
# 'self' define 'class method' (NOT the same as 'Class')
# 
class MyAwesomeClass
  def self.this_is_a_class_method # <- class method here!
    "I'm a class method!"
  end
end

# Calling the class method
# this can called directly on the class without creating an instance of the class
puts MyAwesomeClass.this_is_a_class_method   # Output: "I'm a class method!"

## Self (3)
# self example
class BankAccount
  def initialize(owner, balance)
    @owner = owner
    self.balance = balance  # This will calls the setter method to initialize balance with validation
  end

  # Getter method for @balance
  def balance
    @balance
  end

  # Setter method for @balance, with validation
  def balance=(new_balance)
    if new_balance >= 0
      @balance = new_balance  # Only set balance if it's non-negative
    else
      puts "Balance cannot be negative"
    end
  end
end

# Creating an account with a valid initial balance
account = BankAccount.new("Alice", 100)
puts account.balance  # Calls the getter method, Output: 100

# Trying to set a negative balance
account.balance = -50  # Calls the setter method, Output: "Balance cannot be negative"

=begin
  Self vs @, how different?
    self.variable: 
    - Triggers the setter method, calling self and it will triggers the setter method
    - Additional Controlled
    - Built-in Getter and Setter Method, attr_reader, attr_writer, attr_accessor
    - Requires Getter and Setter method
    @variable: 
    - Directly accessing instance variable 
=end

## Inheritance
# a class 'inherits' behavior from another class
# the '<' symbol'
class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal # <- Inheritance, GoodDog class 'inheriting' from Animal 
end

class Cat < Animal # <- Inheritance
end

sparky = GoodDog.new
paws = Cat.new
puts sparky.speak           # => Hello!
puts paws.speak             # => Hello!

## Super
# used with ingeritance
# use 'super' to invoke the method from the superclass
class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  def speak
    super + " from GoodDog class" # <- super is here! GoodDog is subclass of Animal (superclass)
  end
end

sparky = GoodDog.new
sparky.speak        # => "Hello! from GoodDog class"

## Modules
# allow you to share fumctionality betweem classes
module Flyable # <- module is here!
  def fly
    "I can fly!"
  end
end

class Bird
  include Flyable
end
