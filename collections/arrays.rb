# Arrays

=begin An Array is essentially a list of numbered items. 
The items are declared in a comma-separated list and enclosed in square brackets.
For example:
=end

items = ["Apple", "Orange", "Banana"]

# The code above declares an array named items containing three strings.

# Each item has its own unique index with the first item at index zero.
# To refer to an item, we need to refer to its index:
puts items[0]
# outputs "Apple"

# You can assign any array element a new value by using its index:
items[1] = "Kiwi"

# This will assign the element with index 1 the value "Kiwi".
# A negative index is assumed relative to the end of the array. For example, an index of -1 indicates the last element of the array, -2 is the next to last element in the array, and so on.

                               
# Adding Elements

# An array can contain different types of elements:
arr = [5, "Dave", 15.88, false]

puts arr[0] # 5
puts arr[1] # "Dave"
puts arr[-1] # false

# To add new elements to the array, you can use the << operator, which is typed as two less than signs:
arr << 8

puts arr

# This will add an element with the value 8 to the end of the array.
# Alternatively, you can use the push and insert methods
arr.push(8)

#This will add 8 to the end of the array.

# The insert method allows you to insert the element at the desired position:
arr.insert(2, 8)

#The code above will insert an element with value 8 at the position with index 2

# Removing Elements

=begin Similarly, there are pop and delete_at methods available to remove elements from the array.
The pop method removes the last element of the array.
For example:
=end

arr = [1, 2, 3]
arr.pop
print arr
# [1, 2]

# When used to output arrays, the puts method outputs one element per line, while print actually outputs brackets and a list of items.

# You can use the delete_at method to specify the index of the element to be removed:
arr = [2, 4, 6, 8]
arr.delete_at(2)
print arr
# [2, 4, 8]

# Remember, the index starts counting at 0. So the third element in the array has the index 2.

# Array Ranges

# You can even access a range within the array using the range operators:
nums = [6, 3, 8, 7, 9]
print nums[1..3]
# [3, 8, 7]
