# Class Methods

=begin
Class methods are methods we can call directly on the class itself, without having to instantiate any objects.
This can be useful when there is no logical need to create an object of the class, such as when a class is used to group similar methods and functionality (like mathematical operations). 
One example is a Math class that includes a square method for returning the square of its parameter. There is no logical need to create an object of the Math class just to call the method. This is where class methods come into play.
Class methods are defined using the self keyword:
=end

class Person
  def self.info
    puts "A Person"
  end
end

# Now, the method is a class method and can be called directly from the class, without the need of an object:
Person.info
# outputs "A Person"

# Remember, when used inside of instance methods, self is representing the current instance (object) of that class.
# When defining class methods, self is referring to the class itself, and not to an instance of the class.

# Class Variables

# Class variables are accessible to every object of a class. A class variable belongs to the class, not the objects.
# You declare a class variable using two @ signs, for example @@name.
# We can, for example, keep count of all Person objects created using a class variable:

class Person
  @@count = 0
  def initialize
    @@count += 1
  end
  def self.get_count
    @@count
  end
end

p1 = Person.new
p2 = Person.new

puts Person.get_count
# outputs 2

=begin
In the code above, @@count is a class variable. Since the initialize method is called for every object that is created, incrementing the @@count variable will keep track of the number of objects created.
We also defined a class method called get_count to return the value of the class variable.
In the code above, we have created two objects of the Person class so the value of the @@count variable is 2.
Class variables are usually used when you need information about the class, not the individual objects.
=end
