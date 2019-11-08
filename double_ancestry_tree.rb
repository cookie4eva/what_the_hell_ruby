module Movement
  def move
    'I am moving my leg'
  end

  def self.move_all
    'I am moving all my legs'
  end
end

class DogInclude
  include Movement

  def bark
    ' woof woof'
  end

  def self.howl
    'hawoooooooo'
  end
end


puts DogInclude.ancestors.inspect #[DogInclude, Movement, Object, Kernel, BasicObject]
puts DogInclude.singleton_class.ancestors.inspect
# [#<Class:DogInclude>, #<Class:Object>, #<Class:BasicObject>, Class, Module, Object, Kernel, BasicObject]
