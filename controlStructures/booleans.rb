=begin 
Booleans

If you try to evaluate a value other than true or false as a Boolean, Ruby will automatically treat it as a Boolean. 
When this is done, a non-Boolean value that evaluates to true is called "truthy" and a non-Boolean value that evaluates to false is called "falsey".

In Ruby only false and nil are falsey. Everything else is truthy (even 0 is truthy).
Only true and false are Booleans. nil is not a Boolean. 0 is not a Boolean. 
The string "Hello" is not a Boolean. 
However, in a context where a Boolean is expected, Ruby evaluates them as Boolean (truthy and falsey).
=end

# Comparison

# A Boolean comparison using the == operator returns true when two operands are equal, and false when they are not:
a = 5
b = 8

puts a == b # false

puts a == 5 # true

# Be careful not to confuse assignment (one equals sign) with comparison (two equals signs

# Another comparison operator, the not equal operator (!=), evaluates to true if the items being compared aren't equal, and false if they are. 
# For example:
a = 8
b = 7

puts a != b # true

# There is also the .eql? method, which results in true only if both arguments have the same type and equal values. 
# For example:
puts 3 == 3.0 # true 
# but
puts 3.eql?(3.0) # false

# 3.eql?(3.0) is false because 3 is an integer and 3.0 is a float.
