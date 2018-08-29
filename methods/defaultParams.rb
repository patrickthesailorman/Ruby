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