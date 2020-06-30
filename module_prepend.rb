module Movement
  def move
    'I am moving my leg'
  end

  def self.move_all
    'I am moving all my legs'
  end
end

class DogPrepend
  prepend Movement

  def bark
    'woof woof'
  end

  def self.howl
    'hawoooooooo'
  end

  def move
    'I am moving my arm'
  end
end

puts DogPrepend.ancestors.inspect
# [Movement, DogPrepend, Object, Kernel, BasicObject]
puts DogPrepend.singleton_class.ancestors.inspect
# [#<Class:DogPrepend>, #<Class:Object>, #<Class:BasicObject>, Class,
# Module, Object, Kernel, BasicObject]

puts DogPrepend.methods.include?(:howl) #true
puts DogPrepend.new.methods[0..1].inspect # [:bark, :move]
puts DogPrepend.singleton_class.methods.include?(:howl) # false

module Movement
  def move
    'I am moving my leg'
  end
end

class DogPrepend
  prepend Movement

  def move
    'I am moving my arm'
  end
end

class DogInclude
  include Movement

  def move
    'I am moving my arm'
  end
end

puts DogPrepend.new.move # I am moving my leg
puts DogInclude.new.move # I am moving my arm

puts DogPrepend.ancestors.inspect
# [Movement, DogPrepend, Object, Kernel, BasicObject]
puts DogInclude.ancestors.inspect
# [DogInclude, Movement, Object, Kernel, BasicObject]


