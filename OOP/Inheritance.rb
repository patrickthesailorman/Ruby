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
