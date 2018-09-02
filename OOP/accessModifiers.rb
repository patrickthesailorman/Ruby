
# Access Modifiers

=begin
Until now, all the methods that we defined in our classes were publicly available, meaning that you could call those methods from outside of the class.
There are certain situations when methods should only be visible to the class. For example, imagine a Banking class with methods to calculate values for internal transactions and operations. If these methods were available outside the class, the reliability of the data could be at risk.
To control visibility, Ruby provides the public, private, and protected access modifiers.
By default, all class methods (except initialize) are public, meaning that they are accessible from both inside and outside of the class. 
To make a method accessible only from inside the class, we can use the private access modifier:
=end

class Person
  def initialize(age)
    @age = age
  end
  def show
    puts "#{@age} years = #{days_lived} days"
  end

  private
  def days_lived
    @age * 365
  end
end

p = Person.new(42)
p.show

=begin
In the code above, the method days_lived is private and is only accessible inside the class. We called it from the show method, which is public.
If we try to call the days_lived method from an object (puts p.days_lived), we will get an error.
When the reserved word private is used in a program, anything below it in the class is private (unless public or protected is placed after it to negate it).
Access modifiers can be applied only to methods. Instance variable are always private.
=end

#Protected

=begin
An interesting thing to note about private Ruby methods is that they cannot be called with an explicit receiver, even if that receiver is itself. When we say "receiver", we mean the object that the method is being called from. Even if we try to call the private method with self we will get an error.
This can be needed when, for example, overloading an operator to compare two objects using a private method. 
To demonstrate that, let's define a class Product with a private method id. If the ids of two products are equal, then they are considered equal:
=end

class Product
  attr_accessor :name, :num
  def initialize(name, num)
    @name = name
    @num = num
  end
  def ==(other)
    self.id == other.id
  end
  private
  def id
    name.length*num
  end
end

p1 = Product.new("PC", 5)
p2 = Product.new("Laptop", 3)
puts (p1 == p2)
# outputs "...Error: private method 'id' called..."

# This code generates an error, because we tried to call the private method id on self and the other object.
# If we change the method from private to protected, the code will work:
class Product
  attr_accessor :name, :num
  def initialize(name, num)
    @name = name
    @num = num
  end
  def ==(other)
    self.id == other.id
  end
  protected
  def id
    name.length*num
  end
end

p1 = Product.new("PC", 5)
p2 = Product.new("Laptop", 3)
puts (p1 == p2) 
# outputs false

# So, protected methods are not accessible from outside code, just like private methods, but can be called for an object of the same class or subclasses.
