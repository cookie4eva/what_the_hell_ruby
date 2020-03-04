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
end

puts DogPrepend.ancestors.inspect # [Movement, DogPrepend, Object, Kernel, BasicObject]
puts DogPrepend.methods.include?(:move_all) # false
puts DogPrepend.methods.include?(:howl) #true

puts DogPrepend.new.methods.include?(:bark) # true
puts DogPrepend.new.methods.include?(:move) # true

puts DogPrepend.singleton_class.ancestors.inspect
# [#<Class:DogPrepend>, #<Class:Object>, #<Class:BasicObject>, Class, Module, Object, Kernel, BasicObject]
puts DogPrepend.singleton_class.methods.include?(:move_all) # false
puts DogPrepend.singleton_class.methods.include?(:howl) # false
