# Inheritance

=begin
Inheritance is when a class receives, or inherits, attributes and behavior from another class. The class that is inheriting behavior is called the subclass (or derived class) and the class it inherits from is called the superclass (or base class).
Imagine several classes, Cat, Dog, Rabbit and so on. Although they may differ in some ways (only Dog might have the method bark), they are likely to be similar in others (all having color and name). 
This similarity can be expressed by making them all inherit from a superclass Animal, which contains the shared functionality. 
The < symbol is used to inherit a class from another class.
For example:
=end

class Dog < Animal
  #some code
end

# In the code above, Dog is the subclass and Animal is the superclass.


# Now, let’s define the Animal and Dog classes:
class Animal
  def initialize(name, color)
    @name = name
    @color = color
  end
  def speak
    puts "Hi"
  end
end

class Dog < Animal
end

# Dog is a subclass of Animal so it inherits Animal's methods and attributes, making code like this possible:
d = Dog.new("Bob", "brown")
d.speak

# outputs "Hi"
# Now Dog has all the methods and attributes of the Animal class, which is why we can instantiate the object and call the speak method.


# The subclass can also have its own methods and attributes. Let's define a Cat class and inherit it from the same Animal class:

class Animal
  def initialize(name, color)
    @name = name
    @color = color
  end
  def speak
    puts "Hi"
  end
end

class Dog < Animal
end

class Cat < Animal
  attr_accessor :age
  def speak
    puts "Meow"
  end
end

c = Cat.new("Lucy", "white")
c.age = 2
c.speak
# outputs "Meow"

# In the code above, Cat inherits from Animal. It has an instance variable age and also defines its own speak method. This is called method overriding, because the speak method in Cat overrides, or replaces, the one in the Animal class.
# When we called the speak method for our Dog object, its superclass method was called because Dog did not override it. 
# The Cat object called its own speak method, because it defined its own implementation.

# Inheritance is a great way to remove duplication in your code by writing the shared and common functionality in the superclass and then adding individual functionality in the subclasses.
# You can have multiple levels of inheritance, for example:

class Animal
end
class Mammal < Animal
end
class Dog < Mammal
end

=begin
Here, Dog inherits from Mammal, which inherits from Animal. 
This can be described as an "is a" relationship because a Dog is a Mammal, which is an Animal. This is an example of single inheritance with multiple levels of hierarchy.
However, Ruby does not support multiple inheritance, meaning you cannot inherit a class simultaneously from multiple classes. (A class cannot have multiple superclasses) 
To achieve that behavior, Ruby supports mixins.
=end
