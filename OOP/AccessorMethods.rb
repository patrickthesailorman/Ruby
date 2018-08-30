# Accessors

=begin
Imagine having a lot of instance variables and their setter and getter methods. The code would be really long.
Ruby has a built-in way to automatically create these getter and setter methods using the attr_accessor method.
The attr_accessor method takes a symbol of the instance variable name as an argument, which it uses to create getter and setter methods. 
We can do the following:
=end

class Person

  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
end

p = Person.new("David")
p.name = "Bob"
puts p.name

=begin 
That one line replaced two accessor method definitions. 
Ruby also provides the attr_reader and attr_writer methods in case only a getter or setter method is needed for the instance variable.
We can pass multiple symbols to the attr_accessor, attr_reader and attr_writer methods. For example: attr_accessor :name, :height, :weight
=end

# The accessor methods can also be called inside the class by using the self keyword.
# For example:

class Person
  attr_accessor :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end
  def change(n, a)
    self.name = n
    self.age = a
  end
  def show_info
    puts "#{self.name} is #{self.age}"
  end
end

p = Person.new("David", 28)
p.change("Bob", 42)
p.show_info

# outputs "Bob is 42"

# In the code above, we define a method called change that changes the instance variables via their accessor methods. The show_info method outputs the values of the instance variables.
# self represents the current object and is used to call the instance methods and accessors of the object. 
# One of the benefits of using self is for disambiguation. For example, if you have a variable and a method both called name, self.name would make it clear that you are referring to the method.