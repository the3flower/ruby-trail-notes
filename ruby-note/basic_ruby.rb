## Data Types
#
'Hello, world!'          # string literal
375                      # integer literal
3.141528                 # float literal
true                     # boolean literal
{ 'a' => 1, 'b' => 2 }   # hash literal
[ 1, 2, 3 ]              # array literal
:sym                     # symbol literal
nil                      # nil literal

## Varibles
#
local_variable      # Local variables
@instance_variable  # Instance variables
@@class_variable    # Class variables
$global_variable    # Global variables
CONSTANT_VARIABLE   # Constants variables

## Print & Puts
# puts will follow with newline (\n)
print "Hello"
print "World"
# Output: HelloWorld

puts "Hello"
puts "World"
# Output: Hello
#         World

## Inputs Command
# use when you want to get input fron keyboard
gets
new_string = gets

## Condition Logic
#
if attack_by_land == true
  puts "release the goat"
elsif attack_by_sea == true
  puts "release the shark"
else
  puts "release Kevin the octopus"
end

## Boolean Logic
#
5 == 5  #=> true
5 != 5  #=> false
5 > 7   #=> false
5 < 7   #=> true
7 >= 7  #=> true
5 <= 7  #=> true
5.eql?(5.0) #=> false; although they are the same value, one is an integer and the other is a float
5.eql?(5)   #=> true
5 <=> 10    #=> -1 if the value on the left is less than the value on the right;
10 <=> 10   #=> 0 if the value on the left is equal to the value on the right; and
10 <=> 5    #=> 1 if the value on the left is greater than the value on the right.


########## Logical Operators ##########
# && and
if 1 < 2 && 5 < 6
  puts "Party at Kevin's!"
end

if 1 < 2 and 5 < 6
  puts "Party at Kevin's!"
end

# || or
if 10 < 2 || 5 < 6 #=> although the left expression is false, there is a party at Kevin's because the right expression returns true
  puts "Party at Kevin's!"
end

if 10 < 2 or 5 < 6
  puts "Party at Kevin's!"
end


########## Unless Statements ##########
# works in the opposite way as an if statement 
age = 19
puts "Welcome to a life of debt." unless age < 18

unless age < 18
  puts "Down with that sort of thing."
else
  puts "Careful now!"
end


## Loops
# 
# Loop
i = 0
loop do
  puts "i is #{i}"
  i += 1
  break if i == 10
end

# While Loop
i = 0
while i < 10 do
 puts "i is #{i}"
 i += 1
end

# Until loop
i = 0
until i >= 10 do
 puts "i is #{i}"
 i += 1
end

# Ranges
(1..5)      # inclusive range: 1, 2, 3, 4, 5
(1...5)     # exclusive range: 1, 2, 3, 4

# We can make ranges of letters, too!
('a'..'d')  # a, b, c, d

# For loop
for i in 0..5
  puts "#{i} zombies incoming!"
end

# Times loop
5.times do
  puts "Hello, world!"
end

5.times do |number|
  puts "Alternative fact number #{number}"
end

# Condition with Loop
i = 0
while i < 5
  puts i
  i += 1
end

i = 0
until i == 5
  puts i
  i += 1
end

########## Array ##########
num_array = [1, 2, 3, 4, 5]
str_array = ["This", "is", "a", "small", "array"]

str_array[4]            #=> "array"
str_array[-1]           #=> "array"

str_array.first(2)      #=> ["This", "is"]

# Adding and Removing Element
num_array = [1, 2]
# add
num_array.push(3, 4)      #=> [1, 2, 3, 4]
num_array << 5            #=> [1, 2, 3, 4, 5]
# remove
num_array.pop             #=> 5
num_array                 #=> [1, 2, 3, 4]
# add at the beginning
num_array.unshift(1)      #=> [1, 2, 3, 4]
# remove at the beginning
num_array.shift           #=> 1
num_array                 #=> [2, 3, 4]

# Basic Methods in Array
[].empty?               #=> true
[[]].empty?             #=> false
[1, 2].empty?           #=> false

[1, 2, 3].length        #=> 3

[1, 2, 3].reverse       #=> [3, 2, 1]

[1, 2, 3].include?(3)   #=> true
[1, 2, 3].include?("3") #=> false

[1, 2, 3].join          #=> "123"
[1, 2, 3].join("-")     #=> "1-2-3"

array[1, 2, 3, 4, 5, 6]
array.last(3) #=> 4, 5, 6


########## Hashes ##########
# Creating Hash
my_hash = {
  "a random word" => "ahoy",
  "Dorothy's math test score" => 94,
  "an array" => [1, 2, 3],
  "an empty hash within a hash" => {}
}
# or
my_hash = Hash.new
my_hash               #=> {}

# Accessing Value
shoes = {
  "summer" => "sandals",
  "winter" => "boots"
}

shoes["summer"]   #=> "sandals"

# Adding and changing
shoes["fall"] = "sneakers"

shoes     #=> {"summer"=>"sandals", "winter"=>"boots", "fall"=>"sneakers"}

# Removing 
shoes.delete("summer")    #=> "flip-flops"
shoes                     #=> {"winter"=>"boots", "fall"=>"sneakers"}

# Methods
books = {
  "Infinite Jest" => "David Foster Wallace",
  "Into the Wild" => "Jon Krakauer"
}

books.keys      #=> ["Infinite Jest", "Into the Wild"]
books.values    #=> ["David Foster Wallace", "Jon Krakauer"]

# Merging two hash
hash1 = { "a" => 100, "b" => 200 }
hash2 = { "b" => 254, "c" => 300 }
hash1.merge(hash2)      #=> { "a" => 100, "b" => 254, "c" => 300 }

# 'Symbols' and 'Rocket' Syntax for hash 
# 'Rocket' syntax
american_cars = {
  :chevrolet => "Corvette",
  :ford => "Mustang",
  :dodge => "Ram"
}
# 'Symbols' syntax
japanese_cars = {
  honda: "Accord",
  toyota: "Corolla",
  nissan: "Altima"
}

american_cars[:ford]    #=> "Mustang"
japanese_cars[:honda]   #=> "Accord"


########## Method ##########
# Creating a method
def my_name
  "Joe Smith"
end

puts my_name    #=> "Joe Smith"


########## Debugging ##########
# puts, p => just print to the line that want to see, like another language

# Pry-byebug ruby gems
require 'pry-byebug'

binding.pry


########## Basic Enumerable Methods ##########
# | | <- This called 'block', Inside the block, you can refer to each element by the variable you put between the pipes

## Select Method
#
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends.select { |friend| friend != 'Brian' } #=> ["Sharon", "Leo", "Leila", "Arun"]

## Reject Method
#
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends.reject { |friend| friend == 'Brian' } #=> ["Sharon", "Leo", "Leila", "Arun"]

## Each Method
# if you do something but not puts or print it out, each method will not modify array
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends.each { |friend| puts "Hello, " + friend }

# |friend| block variable (element from array)
# Output:
#=> Hello, Sharon
#=> Hello, Leo
#=> Hello, Leila
#=> Hello, Brian
#=> Hello, Arun
#=> ["Sharon", "Leo", "Leila", "Brian" "Arun"]

## Map Method 1
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends.map { |friend| friend.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`

## Map Method 2
my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']
my_order.map { |item| item.gsub('medium', 'extra large') }
#=> ["extra large Big Mac", "extra large fries", "extra large milkshake"]


# Reduce
collection.reduce(initial_value) { |accumulator, element| ... }
# Reduce 1
my_numbers = [5, 6, 7, 8]
my_numbers.reduce { |sum, number| sum + number } #=> 26

# Reduce 2
my_numbers = [5, 6, 7, 8]
my_numbers.reduce(1000) { |sum, number| sum + number } #=> 1026

# Reduce 3
votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  result
end
#=> {"Bob's Dirty Burger Shack"=>2, "St. Mark's Bistro"=>1}

# Bang Meethod( ! ), modify value
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.map! { |friend| friend.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`

friends
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`


########## Predicate Enumerable Methods ##########
# Include, include?
numbers = [5, 6, 7, 8]

numbers.include?(6)
#=> true
numbers.include?(3)
#=> false

# Any, any?
numbers = [21, 42, 303, 499, 550, 811]

numbers.any? { |number| number > 500 }
#=> true
numbers.any? { |number| number < 20 }
#=> false

# All, all?
fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.all? { |fruit| fruit.length > 3 }
#=> true
fruits.all? { |fruit| fruit.length > 6 }
#=> false

# None, none?
fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.none? { |fruit| fruit.length > 10 }
#=> true
fruits.none? { |fruit| fruit.length > 6 }
#=> false


########## Nested Collections ##########
# Nested Array
test_scores = [
  [97, 76, 79, 93],
  [79, 84, 76, 79],
  [88, 67, 64, 76],
  [94, 55, 67, 81]
]

teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"]
]

teacher_mailboxes[0][0]
#=> "Adams"
teacher_mailboxes[1][0]
#=> "Jones"
teacher_mailboxes[2][0]
#=> "Perez"

# Creating a new Nested Array
Array.new(number_of_rows) { Array.new(seats_per_row) }
mutable = Array.new(3, Array.new(2))
#=> [[nil, nil], [nil, nil], [nil, nil]]
mutable[0][0] = 1000
#=> 1000
mutable
#=> [[1000, nil], [1000, nil], [1000, nil]]

# Adding and removing elements
test_scores << [100, 99, 98, 97]
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]
test_scores[0].push(100)
#=> [97, 76, 79, 93, 100]
test_scores
#=> [[97, 76, 79, 93, 100], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]

test_scores.pop
#=> [100, 99, 98, 97]
test_scores[0].pop
#=> 100
test_scores
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]

# Iterating over a nested array
teacher_mailboxes.each_with_index do |row, row_index|
  puts "Row:#{row_index} = #{row}"
end
#=> Row:0 = ["Adams", "Baker", "Clark", "Davis"]
#=> Row:1 = ["Jones", "Lewis", "Lopez", "Moore"]
#=> Row:2 = ["Perez", "Scott", "Smith", "Young"]
#=> [["Adams", "Baker", "Clark", "Davis"], ["Jones", "Lewis", "Lopez", "Moore"], ["Perez", "Scott", "Smith", "Young"]]


# Nested Hashes
vehicles = {
  alice: {year: 2019, make: "Toyota", model: "Corolla"},
  blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
  caleb: {year: 2020, make: "Honda", model: "Accord"}
}

vehicles[:alice][:year]
#=> 2019
vehicles[:blake][:make]
#=> "Volkswagen"
vehicles[:caleb][:model]
#=> "Accord"

vehicles[:dave] = {year: 2021, make: "Ford", model: "Escape"}
#=> {:year=>2021, :make=>"Ford", :model=>"Escape"}
vehicles
#=> {:alice=>{:year=>2019, :make=>"Toyota", :model=>"Corolla"}, :blake=>{:year=>2020, :make=>"Volkswagen", :model=>"Beetle"}, :caleb=>{:year=>2020, :make=>"Honda", :model=>"Accord"}, :dave=>{:year=>2021, :make=>"Ford", :model=>"Escape"}}
vehicles[:dave][:color] = "red"
#=> "red"
vehicles
#=> {:alice=>{:year=>2019, :make=>"Toyota", :model=>"Corolla"}, :blake=>{:year=>2020, :make=>"Volkswagen", :model=>"Beetle"}, :caleb=>{:year=>2020, :make=>"Honda", :model=>"Accord"}, :dave=>{:year=>2021, :make=>"Ford", :model=>"Escape", :color=>"red"}}
vehicles.delete(:blake)
#=> {:year=>2020, :make=>"Volkswagen", :model=>"Beetle"}
vehicles
#=> {:alice=>{:year=>2019, :make=>"Toyota", :model=>"Corolla"}, :caleb=>{:year=>2020, :make=>"Honda", :model=>"Accord"}, :dave=>{:year=>2021, :make=>"Ford", :model=>"Escape", :color=>"red"}}
vehicles[:dave].delete(:color)
#=> "red"
vehicles
#=> {:alice=>{:year=>2019, :make=>"Toyota", :model=>"Corolla"}, :caleb=>{:year=>2020, :make=>"Honda", :model=>"Accord"}, :dave=>{:year=>2021, :make=>"Ford", :model=>"Escape"}}

