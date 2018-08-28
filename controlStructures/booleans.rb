=begin 
Booleans

If you try to evaluate a value other than true or false as a Boolean, Ruby will automatically treat it as a Boolean. 
When this is done, a non-Boolean value that evaluates to true is called "truthy" and a non-Boolean value that evaluates to false is called "falsey".

In Ruby only false and nil are falsey. Everything else is truthy (even 0 is truthy).
Only true and false are Booleans. nil is not a Boolean. 0 is not a Boolean. 
The string "Hello" is not a Boolean. 
However, in a context where a Boolean is expected, Ruby evaluates them as Boolean (truthy and falsey).
=end