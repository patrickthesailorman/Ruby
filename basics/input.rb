# Input

# To get input from the user in Ruby, you use the gets method, which returns what the user types as a string. To store the input for later use, you can assign the return value to a variable.
# For example:
x = gets
puts x


# "gets" gets a line of text, including the new line at the end. If you do not want to include the new line, use the gets.chomp method:
puts "Enter your name"
name = gets.chomp
puts "Welcome, #{name}"


# The value of the input is a string. To convert it to an integer, you can use the gets.to_i method.