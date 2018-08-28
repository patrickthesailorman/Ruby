# if Statements

=begin You can use an if expression to execute code when a certain condition holds. 
If a conditional expression evaluates to true, the if code is carried out. Otherwise, the code is ignored. 
For example:
=end
a = 42

if a > 7
  puts "Yes"
end

# outputs "Yes"


# if expressions can be nested, one inside the other.
# This means that the inner if is the code part of the outer one. This is one way to see whether multiple conditions are satisfied. Keep in mind that once an if condition fails, the entire block is exited.
num = 16
if num > 7
  puts "Greater than 7"
  if num < 42
    puts "Between 7 and 42"
  end
end
# outputs:
# Greater than 7
# Between 7 and 

# else Statements

# An else block in an if expression contains code that is called when the if conditional evaluates to false.
# For example:
age = 15
if age > 18 
  puts "Welcome"
else 
  puts "Too young"
end

# outputs "Too young

# elsif Statements

=begin The elsif (short for else if) block is useful when you want to test multiple conditions.
A series of if elsif expressions can have a final else block, which is called if none of the if or elsif expressions are true. 
For example:
=end

num = 8
if num == 3
  puts "Number is 3"
elsif num == 10
  puts "Number is 10"
elsif num == 7
  puts "Number is 7"
else
  puts "Not found"
end

#  When an elsif block executes the entire if expression is exited

# unless

# The unless expression is the opposite of an if expression. It executes code when a conditional is false.
# For example:
a = 42
unless a < 10
 puts "Yes"
else
 puts "No"
end

# outputs "Yes"

# You can use an else block with the unless, just like you did with the if expression. The end keyword is also required to close the block.

# The if and unless modifiers can also be used to execute code.
a = 42
puts "Yes" if a > 10

puts "Yes" unless a < 10

# This code before the if executes only if the condition evaluates to true.
# The code before the unless executes only if the condition is false.
