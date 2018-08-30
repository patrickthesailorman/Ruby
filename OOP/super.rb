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
