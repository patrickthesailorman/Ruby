# Default Parameters

# You can also set default values for the parameters, so that the method will still work even if you do not provide all the arguments.
# For example:

def sum(a, b=8)
  puts a+b
end

# Now our parameter b has a default value of 8.
# If we pass just one argument, the method will use the value 8 as the second argument:
x = 5
sum(x)
# outputs 13

# We can also pass two arguments as before, and the method will work as expected. The default value only comes into play when no value for that argument is provided.

# Parameters

# You can also leave off the parentheses when using methods.
def sum x, y
  puts x+y
end

sum 6, 9

# This leads to more fluid reading of code, but sometimes it can be confusing.

# Let's create a program that prompts the user to enter a name and then outputs a greeting based on the input.
def greet(name="")
  if name==""
    puts "Greetings!"
  else
    puts "Welcome, #{name}"
  end
end

greet(gets.chomp)

=begin We defined a method called greet that takes one parameter and outputs a message based on that parameter. 
Then we called the greet method passing user input as the argument.
Reminder: gets.chomp is used to take user input and strip the newline at the end of the input.
=end

# Optional Parameters

# You can also define methods that take any number of arguments using the following syntax:
def someMethod(*p)
  puts p
end

someMethod(25, "hello", true)

=begin Now you can pass any number of arguments to the method.
In the code above p is an array. When you pass arguments to the method, they become elements of p.
If you call the method without any arguments, the array p will be empty.

This technique allows optional parameters for a method, for example:
=end

def myMethod(a, b, *c)
  #some code
end

# myMethod has two mandatory parameters and an optional one. Therefore, you can pass two or more arguments to the method.