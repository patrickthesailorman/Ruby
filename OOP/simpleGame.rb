# A Simple Game

# Object Oriented Programming is very useful when it comes to creating complex applications, such as games.
# Let's create a simple fighting game, where two opponents will fight until one of them loses. 
# We start by creating our Player class:

class Player
  attr_accessor :name, :health, :power
  def initialize(n, h, pow)
    @name = n
    @health = h
    @power = pow
  end
  def isAlive
    @health > 0
  end
  def hit(opponent)
    opponent.health -= self.power
  end
  def to_s
    "#{name}: Health: #{health}, Power: #{power}"
  end
end

=begin
The Player class has 3 instance variables, name, health and power, and 3 instance methods:
isAlive shows whether the player is still alive.
hit hits the opponent (decreases the opponent's health by the amount of player's power)
to_s outputs the player information.
We have also defined getter and setter accessors for the instance variables using the attr_accessor method.
=end


# With the Player class defined, we can now define a method to make two opponents fight:
def fight(p1, p2)
  while p1.isAlive && p2.isAlive
    p1.hit(p2)
    p2.hit(p1)
    show_info(p1, p2)
  end
    
  if p1.isAlive 
    puts "#{p1.name} WON!" 
  elsif p2.isAlive
    puts "#{p2.name} WON!" 
  else
    puts "TIE!"
  end
end

def show_info(*p)
  p.each { |x| puts x}
end

# The fight method uses a loop to make the players hit each other until the isAlive method returns false for one of them. After each iteration, the information of both players is output to the screen using the show_info method we defined.
# Once the loop is over (meaning one of the opponents has lost), we check and output the corresponding result.

# All that is left is to create two Player objects and call the fight method. To make the game interesting, we can use random values for health and power of our players using the rand method, which returns a random value in the range of 0 to its argument.

p1 = Player.new("Player 1", 1+rand(100), 1+rand(20))
p2 = Player.new("Player 2", 1+rand(100), 1+rand(20))

#show Player info
show_info(p1, p2)

puts "LETS FIGHT!"
fight(p1, p2)

# We used 100 as the maximum value for health, and 20 as a maximum value for power. We add 1 to the rand method to avoid the value 0.
# Now, each time you run the program, two Players with random health and power will be created and will fight!
# The final code:

class Player
  attr_accessor :name, :health, :power
  def initialize(n, h, pow)
    @name = n
    @health = h
    @power = pow
  end
  def isAlive
    @health > 0
  end
  def hit(opponent)
    opponent.health -= self.power
  end
  def to_s
    "#{name}: Health: #{health}, Power: #{power}"
  end
end

def fight(p1, p2)
  while p1.isAlive && p2.isAlive
    p1.hit(p2)
    p2.hit(p1)      
    show_info(p1, p2)
  end
    
  if p1.isAlive 
    puts "#{p1.name} WON!" 
  elsif p2.isAlive
    puts "#{p2.name} WON!" 
  else
    puts "TIE!"
  end
end

def show_info(*p)
  p.each { |x| puts x}
end

#initialize Players
puts "PLAYERS INFO"
p1 = Player.new("Player 1", 1+rand(100), 1+rand(20))
p2 = Player.new("Player 2", 1+rand(100), 1+rand(20))

#show Player info
show_info(p1, p2)

puts "LETS FIGHT!"
fight(p1, p2)

# This was just a simplified version.
# You can easily create different subclasses of players, add more properties, define weapons, get user input to make different decisions, and so on.
