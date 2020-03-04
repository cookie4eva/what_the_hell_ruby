class One
  def one
    'one'
  end

  def self.the_one
    'the one'
  end
end

class Three < One
  def three
    'three'
  end

  def self.the_three
    'the three'
  end
end

class Three
  class Four

  end
end

class Three::Five

end

puts One.method(:ancestors).owner # Module
puts One.method(:superclass).owner # Class
puts One.included_modules # [Kernel]
puts One.singleton_class.included_modules # [Kernel]
puts One.singleton_class.superclass.ancestors

puts One.ancestors.inspect # [One,Object,Kernel,BasicObject]
puts One.new.singleton_class.ancestors.inspect # [#<Class:#<One:0x007fdc18803f08>>,One,Object,Kernel,BasicObject]

puts Three.new.singleton_class.ancestors.inspect # [#<Class:#<Three:0x007fdc18803a08>>,Three,One,Object,Kernel,BasicObject]
puts Three.ancestors.inspect # [Three,One,Object,Kernel,BasicObject]
puts Three.new.methods.include?(:one) # true
puts Three.new.methods.include?(:three) # true
puts Three.new.singleton_class.methods.include?(:the_one) # true
puts Three.new.singleton_class.methods.include?(:the_three) # true
puts Three::Four.ancestors.inspect # [Three::Four,Object,Kernel,BasicObject]
puts Three::Five.ancestors.inspect # [Three::Five,Object,Kernel,BasicObject]

