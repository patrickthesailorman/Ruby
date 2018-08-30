# Instance Methods

=begin
In the real world, objects behave in their own way. A car moves, a phone rings, and so on.
The same applies to programming objects. Behavior is specific to the object's type and is defined by methods in the class.
You can declare instance methods that are available to an object of the class.
For example:
=end

class Dog
  def bark
    puts "Woof!"
  end
end

# We defined a method called bark that outputs text.
# Now we can instantiate an object and call the method using the dot syntax:
d = Dog.new
d.bark

# outputs "Woof"

# As with any method, instance methods can include multiple parameters and return values.

# Accessors

# An instance method can also be created to access the instance variables from outside of the object.
# For example, if we want to access the @name instance variable for a Person object, we need a method that returns the value of that variable:
class Person
  def initialize(name)
    @name = name
  end
  def get_name
    @name
  end
end

p = Person.new("David")
puts p.get_name

# outputs "David"

=begin
We created an instance method get_name that returns the value of the @name instance variable and then called it for our object p.
Getter and setter methods are called accessors.
The method that is used to retrieve the value of the variable is called a getter method (get_name in our example).
The method that is used to modify the value of the variable is called a setter method.
=end

# Setter Methods

=begin
Getter methods are used to access the instance variable. If we want to change the value of the instance variables, we need setter methods.
Ruby provides a special syntax for defining setter methods: the method name is followed by an equal sign (=).
For example:
=end

class Person
  def initialize(name)
    @name = name
  end
  def get_name
    @name
  end
  def set_name=(name)
    @name = name
  end
end

p = Person.new("David")
p.set_name = "Bob"
puts p.get_name

# outputs "Bob"

=begin
In the code above, set_name is a setter method that sets the value of the @name instance variable to the value of its parameter name. 
Notice the special syntax used when calling the method: p.set_name = "Bob". 
Normally to call a method, you would use p.set_name=("Bob"), where the entire set_name= is the method name, and the string "Bob" is the argument being passed into the method. 
However, for setter methods, Ruby allows us to use a more natural assignment syntax: p.set_name = "Bob". 
When you see this code, just realize there's a method called set_name= working behind the scenes.
=end

# Accessors

# In Ruby it is a common practice to name the getter and setter methods using the same name as the instance variable they are accessing. 
# The previous example can be rewritten as:

class Person
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
  def name=(name)
    @name = name
  end
end

p = Person.new("David")
p.name = "Bob"
puts p.name

# outputs "Bob"