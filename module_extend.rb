module Movement
  def move
    'I am moving my leg'
  end

  def self.move_all
    'I am moving all my legs'
  end
end

class DogExtend
  extend Movement

  def bark
    'woof woof'
  end

  def self.howl
    'hawoooooooo'
  end
end

puts DogExtend.ancestors.inspect # [DogExtend, Object, Kernel, BasicObject]
puts DogExtend.methods.include?(:move_all) # false
puts DogExtend.methods.include?(:howl) #true

puts DogExtend.new.methods.include?(:bark) # true
puts DogExtend.new.methods.include?(:move) # false

puts DogExtend.singleton_class.ancestors.inspect
# [#<Class:DogExtend>, Movement, #<Class:Object>, #<Class:BasicObject>, Class, Module, Object, Kernel, BasicObject]
puts DogExtend.singleton_class.methods.include?(:move_all) # false
puts DogExtend.singleton_class.methods.include?(:howl) # false