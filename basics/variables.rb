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