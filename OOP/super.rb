# super

# Ruby has a built-in method called super, which is used to call methods from the superclass.
# When you call super in a method of the subclass, the method of the same name gets called from the superclass.
# For example:

class Animal
  def speak
    puts "Hi"
  end
end

class Cat < Animal
  def speak
    super
    puts "Meow"
  end
end

# super calls the speak method of the Animal class.
# Now, if we create an object of class Cat and call its speak method, we will get the following:
c = Cat.new
c.speak
# Outputs
# Hi
# Meow

# The use of super allows us to remove duplicate code by using and extending the behavior of the superclass in our subclasses.

# super is more commonly used in the initialize method.
# For example, our superclass has a initialize method that takes one argument and initializes an instance variable:
class Animal
  def initialize(name)
    @name = name
  end
end

# Now, we need a subclass Cat that also has an @age instance variable, and we need to define its own initialize method. Instead of repeating ourselves, and setting the name instance variable in the Cat class, we can use its superclass with the super method as follows:
class Cat  < Animal
  def initialize(name, age)
    super(name)
    @age = age
  end
  def to_s
    "#{@name} is #{@age} years old."
  end
end

# We passed one of the arguments to the super method, which calls the initialize method of the Animal class and sets the @name instance variable.
# Now we can instantiate an object and output its info:
c = Cat.new("Bob", 3)
puts c

# outputs "Bob is 3 years old."

# In the example we used super for a simple assignment. Imagine having a complex program with complex calculations and operations being carried out. That's where the real benefits of "not repeating yourself" come in, and calling the super where applicable is one way of achieving it.
