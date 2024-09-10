=begin
  [Project]: Caecar Cipher
  from The Odin Project Ruby Course https://www.theodinproject.com/lessons/ruby-caesar-cipher

  Description: Caesar’s cipher, the shift cipher, Caesar’s code or Caesar shift, 
  is one of the simplest and most widely known encryption techniques.

  Example:
    with a left shift of 3, D would be replaced by A, E would become B, and so on.
  
  * Don’t forget to wrap from z to a.
  * Don’t forget to keep the same case.
=end

=begin
  [Algorithm Idea]
  * This section is for breaking down my ideas. I’ll note various versions here to see if they work or not, 
  and I won’t delete anything.

  [1]
    1. Change String to Array
    2. Convert all array value to Decimal(int) in ASCII 
    4. Check ASCII range and Unqiue String
      4.1. ASCII range should in range, uppercase 65-90, lowercase 97-122 
      4.2. Unqiue String should be the same
    5. Shift right(+), plus all value with 'shift' variable
    6. Convert back to String
=end


# Caecar Cipher Method
def caecar_cipher(string, shift)
  # Convert to Decimal in Array form
  str_byte = string.bytes
  puts ("[Convert all string to integer]")
  puts ("Array: #{str_byte}")
  puts ("Variable type (with specific index): #{str_byte[0].class}")
  puts ("<========================================>")

  # Check ASCII condition
  

  # Shift back
  # str_byte.map { |str| str - shift } ** WRONG, map METHOD SHOULD HAVE SOME VARIABLE TO COLLECT RESULT
  int_arr = str_byte.map { |str| str + shift }
  puts ("[Shift Back]")
  puts ("Array: #{int_arr}")

  # Convert back to String
  result = int_arr.map { |int| int.chr } # still not correct it have another string not just alphabet
  puts "[RESULT]:"
  puts "#{result}"
end

caecar_cipher("What a string!", 5)