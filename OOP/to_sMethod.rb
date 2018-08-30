# The to_s Method

# The to_s method comes built-in with all classes. It gets called when you output the object.
# For example:

class Person
#some code
end
p = Person.new
puts p
# outputs "#<Person:0x0000000272e140>"

# When we call puts p, Ruby automatically calls the to_s method for the object p, so puts p is the same as puts p.to_s.
# By default, the to_s method prints the object's class and an encoding of the object id.

# We can define our own to_s method for a class and add custom implementation to it.
# For example, we can generate an informative, formatted output for our Person class:

class Person
  def initialize(n, a)
    @name = n
    @age = a
  end
  def to_s
    "#{@name} is #{@age} years old."
  end
end
p = Person.new("David", 28)
puts p
# outputs: "David is 28 years old."

# The to_s method also gets called when the object is used as a value in a string, like "#{p}"
# Defining the to_s method makes it easier and shorter to output the information of an object in the format needed, as opposed to defining a custom method and calling it from an object.
# When you define the to_s method you call puts on your object (puts obj), where with a custom method you have to explicitly call it from the object (puts obj.info).