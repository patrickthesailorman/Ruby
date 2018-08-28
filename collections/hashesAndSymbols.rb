# Hashes

=begin Hashes (sometimes known as associative arrays, maps, or dictionaries) are similar to arrays in that they are an indexed collection of elements. 
However, while you index arrays with integers, you can index a hash with anything.
That is very useful when you want to map values, for example: "name" => "David". Here, "name" is the index (also called the key) which is mapped to the value "David". So, hashes represent key=>value pairs.
A hash is created with comma separated keys and values inside curly brackets:
=end

ages = { "David" => 28, "Amy"=> 19, "Rob" => 42 }

puts ages["Amy"] 
# outputs 19

# As you can see, the values are accessed using the same index syntax as with an array.
# Compared with arrays, hashes have one significant advantage: they can use any object as an index, even an array. For example: { [1,"jan"] => "January" }

# Symbols

=begin In the previous example we used strings as keys for the hash, but Ruby has a more elegant and faster way for creating and accessing hash indexes than using strings.
Symbols are similar to strings, but they are immutable, meaning that they cannot be changed.
A symbol is created using a colon and a name, for example:
=end

a = :id

# In the code above :id is a symbol. You can also think of :id as meaning the name of the variable id, and plain id as meaning the value of the variable.
# So why use symbols instead of strings? Using symbols not only saves time when doing comparisons, but also saves memory, because they are only stored once.


# Hashes & Symbols

# Uses of symbols includes using them as hash keys.
# For example:

h = {:name=>"Dave", :age=>28, :gender=>"male"}

puts h[:age]

# In the code above, symbols are used as keys for our hash. 
# A shorter way of writing the same code as above is the following:
h = {name:"Dave", age:28, gender:"male"}

puts h[:age]

# In other programming languages hashes are called associative arrays or dictionaries.

# Hashes

=begin There are useful methods available for manipulating hashes:
hash.delete(key) removes the key-value pair from hash by key.
hash.key(value) returns the key for the given value in hash, nil if no matching value is found.
hash.invert creates a new hash, reversing keys and values from hash; that is, in the new hash, the keys from hash become values and values become keys.
hash.keys returns a new array with keys from hash. 
hash.values returns a new array containing all the values of hash.
hash.length returns the length of hash as an integer. 

For example:
=end

car = {brand:"BMW", year:2016, color:"red", length:205}
car.delete(:length)
puts car.values

# outputs:
# BMW
# 2016
# red