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
