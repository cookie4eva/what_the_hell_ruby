# Example 1

module Movement
  def move
    'I am moving my leg'
  end
end

class DogInclude
  include Movement

  def bark
    'woof woof'
  end

  def self.howl
    'hawoooooooo'
  end
end

puts DogInclude.ancestors.inspect # [DogInclude, Movement, Object, Kernel, BasicObject]
puts DogInclude.new.methods[0..1] # [:bark, :move]

#Example 2

class NotMovingDog < DogInclude
  def move
    'not moving'
  end
end


puts DogInclude.new.move # I am moving my leg
puts NotMovingDog.new.move # not moving
puts NotMovingDog.ancestors.inspect # [NotMovingDog, DogInclude, Movement, Object, Kernel, BasicObject]


#Example 3
module Jump
  def jump
    'jumping'
  end
   def move
     'now jumping'
   end
end

class JumpingDog
  include Movement
  include Jump
end

puts JumpingDog.ancestors.inspect # [JumpingDog, Jump, Movement, Object, Kernel, BasicObject]
puts JumpingDog.new.move # now jumping

class MovingDog
  include Jump
  include Movement
end

puts MovingDog.ancestors.inspect # [MovingDog, Movement, Jump, Object, Kernel, BasicObject]
puts MovingDog.new.move # I am moving my leg
