=begin
Variables beginning with a capital letter are called constants.
The value of a constant variable cannot be changed once it has been assigned.
For example:
=end

MyNum = 42
# Trying to change the value produces a warning

MyNum = 8
# warning: already initialized constant MyNum

# Data Types

=begin All variables in Ruby can be of all data types. 
Ruby automatically determines data type by the value assigned to the variable. 
For example:
=end

x = 42 # integer
y = 1.58 # floating point value
z = "Hello" # string

=begin You can reassign a different value to a variable at any time.
To insert the value of a variable into a double quote string (a string is a sequence of characters, such as "Hello"), use the # symbol and curly brackets with the variable name. 
For example:
=end 

age = 42
puts "He is #{age} years old"

# outputs "He is 42 years old"


# String Interpolation

# You can embed any Ruby expression inside a double quote string using #{ }, just as you did with variable names. Ruby evaluates the placeholders and replaces them with values:
a = 5
b = 2
puts "The sum is #{a+b}"
# outputs "The sum is 7

# Repeating a String

=begin Strings can be repeated using the * and an integer value.
The order of the string and the integer does matter: the string has to come first. 
For example:
=end

a = "abc"
puts a*3
# outputs "abcabcabc"

puts '5'*4
# outputs 5555