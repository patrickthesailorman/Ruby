
# case Statements

=begin As we have seen in the previous lessons, we can check for multiple conditions using the if/elsif/else expression. 
A more simplified and flexible option is the case expression, which tests a value in when statements.
For example:
=end

a = 2

case a
when 1
  puts "One"
when 2
  puts "Two"
when 3
  puts "Three"
end

# outputs "Two"

# You can have as many when statements as you need for a single case.
# Note that the case expression must be closed with the end keyword


# Multiple values can be tested within a single when by separating the values with commas.
# For example:
age = 5

case age
when 1, 2, 3
  puts "Little baby"
when 4, 5
  puts "Child"
end

# outputs "Child


# An else statement can be provided to execute code if no when condition matches:

age = 18

case age
when 1, 2, 3
  puts "Little baby"
when 4, 5
  puts "Child"
else
  puts "Not a baby"
end

# outputs "Not a baby"