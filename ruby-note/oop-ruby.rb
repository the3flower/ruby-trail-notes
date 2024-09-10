=begin
  [Object Oriented Programming]
  - Ruby, almost everything is an object, 
  except for method, blocks and variables. 
=end

## Class
# 
class GoodDog
end

sparky = GoodDog.new # Create an object (instance) of the class

## Method
#
def details
  puts "This car is a #{@make} #{@model}."
end

## Class + Method
#
class Car
  def initialize(make, model) # this like __init__ in python
    @make = make # instance variable
    @model = model
  end

  def details
    puts "This car is a #{@make} #{@model}."
  end
end

my_car = Car.new("Toyota", "Corolla")
my_car.details