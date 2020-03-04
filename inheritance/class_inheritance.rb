class One
  def one
    'one'
  end

  def self.the_one
    'the one'
  end
end

# class Three
#   include One
# end
# Fails, "`include':wrong argument type Class (expected Module)"

# class Three
#   extend One
# end
# Fails, "`extend':wrong argument type Class (expected Module)"

# class Three
#   prepend One
# end
# Fails, "`prepend':wrong argument type Class (expected Module)"


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

puts One.class # Class
puts One.class.superclass # Module
puts One.class.superclass.superclass # Object
puts One.superclass # Object
puts One.superclass.superclass # BasicObject (we skipped kernel because he is a module)
puts One.superclass.superclass.superclass # nil

puts One.singleton_class #<Class:One>
puts One.singleton_class.superclass # #<Class:Object>
puts One.singleton_class.superclass.superclass # #<Class:BasicObject>
puts One.singleton_class.superclass.superclass.superclass # Class

puts One.singleton_class.class # Class
puts One.singleton_class.class.superclass # Module
puts One.singleton_class.class.superclass.superclass # Object

require 'pry'
binding.pry
puts Three.superclass # One
puts Three.superclass.superclass # Object
puts Three.singleton_class # #<Class:Three>
puts Three.singleton_class.superclass # #<Class:One>
puts Three.singleton_class.superclass.superclass # #<Class:Object>

