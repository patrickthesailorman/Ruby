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
