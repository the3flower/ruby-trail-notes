=begin
  [Advanced Ruby]
  - Pattern Matching
  - Blocks, yield
  - Block Control
=end

## Pattern Matching
#  - used with 'case' to extract data for more readable
# example (1):
# oh.. if statement is kinda complex
person = { name: "Alice", age: 25 }

# WITHOUT pattern matching
if person.is_a?(Hash) && person.key?(:name) && person.key?(:age)
  name = person[:name]
  age = person[:age]
  puts "#{name} is #{age} years old"
end

# with pattern matching
case person
in { name: name, age: age }
  puts "#{name} is #{age} years old"
end

# example (2):
# working with APIs (JSON)
response = {
  status: 200,
  body: { user: { name: "Bob", email: "bob@example.com" } }
}

case response
  in { status: 200, body: { user: { name:, email: } } }
    puts "User #{name} with email #{email} was retrieved successfully."
  else
    puts "Request failed."
end
# * yeah, it's jus used for extracting data from different formats or structures in a way that's more readable

## Blocks (1) (more depth)
#  - {} or do...end
#  - defining them in side pipes |arg1, arg2|
#
# Basic:
# Single-line block
[1,2,3].each { |num| puts num }

# Multi-line block
[1,2,3].each do |num|
  puts num
end

## Block (2): yield
#  - 'yeild', invoke a block inside a method
# example (1):
def greet
  puts "Hello!"
  yield  # This will trigger the block
  puts "Goodbye!"
end

# Calling the method with a block
greet { puts "How are you?" }
# Output:
# Hello!
# How are you?
# Goodbye!

# example (2):
def love_language
  yield('Ruby')
  yield('Rails')
end

love_language { |lang| puts "I love #{lang}" }
#=> I love Ruby.
#=> I love Rails.

## Block Control
#
# Use 'method' as a conditional check
def maybe_block
  if block_given? # 'block_given?' is a built-in method, check block was passed returns true, if not returns false
    puts "block party"
  end
  puts "executed regardless"
end

maybe_block
# => executed regardless

maybe_block {} # {} is just an empty block
# => block party
# => executed regardless

## Lambdas
#  - way to write a block and save it to variable.
#  
# Create Lambdas (1), lambda keyword
# = lambda {}
my_lambda = lambda { puts "my lambda" }

# Create Lambdas (2)
# = -> {}
my_other_lambda = -> { puts "hello from the other side" }

# Accept arguments to Lambda (1)
# = -> () {}
my_name = ->(name) { puts "hello #{name}" }

# Accept arguments to Lambda (2), lambda keyword 
# = lambda { || }
my_age = lambda { |age| puts "I am #{age} years old" }

# Call Lambdas
# - has many way to call lambda
# ** stick with #call method
my_name = ->(name) { puts "hello #{name}" }

my_name.call("tim") # <- #call method 
my_name.("tim")
my_name["tim"]
my_name.=== "tim"

## Procs
#  - object that you can use to store blocks and pass them around like variables.
#  
# Declare proc (1)
a_proc = Proc.new { puts "this is a proc" }

a_proc.call
#=> this is a proc

# Declare proc (2), just proc
a_proc = proc { puts "this is a proc" }

a_proc.call
#=> this is a proc

# Arguments with Procs
# - inside || (pipes)
a_proc = Proc.new { |name, age| puts "name: #{name} --- age: #{age}" }

a_proc.call("tim", 80)
#=> name: tim --- age: 80

=begin
  Lambdas vs Procs
    Lambdas:
    - Does care and will raise an error if you don’t honor the number of parameters expected.
    - Stricter rules
    Procs:
    - Doesn’t care if you pass in fewer or more arguments than you specify.
    - More flexible
=end