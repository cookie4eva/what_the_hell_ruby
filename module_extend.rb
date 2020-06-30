module Movement
  def move
    'I am moving my leg'
  end
end

class DogExtend
  extend Movement

  def bark
    'woof woof'
  end

  def move
    'Extended the move'
  end

  def self.howl
    'hawoooooooo'
  end
end

puts DogExtend.ancestors.inspect
# [DogExtend, Object, Kernel, BasicObject]
puts DogExtend.singleton_class.ancestors.inspect
# [#<Class:DogExtend>, Movement, #<Class:Object>, #<Class:BasicObject>,
# Class, Module, Object, Kernel, BasicObject]

puts DogExtend.methods[0..1].inspect # [:howl, :move]
puts DogExtend.new.methods[0..1].inspect # [:move, :bark]
puts DogExtend.move # I am moving my leg
puts DogExtend.new.move # Extended the move

#example 2

class DogExtendAgain
  extend Movement

  def bark
    'woof woof'
  end

  def self.move
    'Extended the move'
  end

  def self.howl
    'hawoooooooo'
  end
end

puts DogExtendAgain.methods[0..1].inspect # [:howl, :move]
puts DogExtendAgain.new.methods[0..1].inspect # [:move, :bark]
puts DogExtendAgain.move # Extended the move
puts DogExtendAgain.new.move # undefined method `move' for #<DogExtendAgain:0x00007ff3031bfa28> (NoMethodError)
