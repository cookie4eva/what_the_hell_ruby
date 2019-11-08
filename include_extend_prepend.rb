require 'pry'

module Movement
  def move
    puts 'I am moving my leg'
  end

  def self.move_all
    puts 'I am moving all my legs'
  end
end

class DogInclude
  include Movement

  def bark
    puts' woof woof'
  end

  def self.howl
    puts 'hawoooooooo'
  end
end


puts "\n***** DogInclude ****\n"
puts "ancestors #{DogInclude.ancestors}"
# [DogInclude, Movement, Object, PP::ObjectMixin, Kernel, BasicObject]
puts "singleton class #{DogInclude.singleton_class}"
#  #<Class:DogInclude>
puts "instance_methods(false) #{DogInclude.instance_methods(false)}"
# [:bark]
puts "DogInclude.new.methods[0..1] #{DogInclude.new.methods[0..1]}"
# [:bark, :move]
puts "singleton_class.ancestors #{DogInclude.singleton_class.ancestors}"
# [#<Class:DogInclude>, #<Class:Object>, #<Class:BasicObject>, Class, Module, Object, PP::ObjectMixin, Kernel, BasicObject]
puts "singleton_methods #{DogInclude.singleton_methods}"
# [:howl]

class DogExtend
  extend Movement

  def bark
    puts 'woof woof'
  end

  def self.howl
    puts 'hawoooooooo'
  end
end

puts "\n***** DogExtend ****\n"
puts "ancestors #{DogExtend.ancestors}"
# [DogInclude, Movement, Object, PP::ObjectMixin, Kernel, BasicObject]
puts "singleton class #{DogExtend.singleton_class}"
# #<Class:DogInclude>
puts "instance_methods(false) #{DogExtend.instance_methods(false)}"
# [:bark]
puts "DogExtend.new.methods[0..1] #{DogExtend.new.methods[0..1]}"
# [:bark, :move]
puts "singleton_class.ancestors #{DogExtend.singleton_class.ancestors}"
# [#<Class:DogInclude>, #<Class:Object>, #<Class:BasicObject>, Class, Module, Object, PP::ObjectMixin, Kernel, BasicObject]
puts "singleton_methods #{DogExtend.singleton_methods}"
# [:howl]


class DogPrepend
  prepend Movement

  def bark
    puts 'woof woof'
  end

  def self.howl
    puts 'hawoooooooo'
  end
end

puts "\n***** DogPrepend ****\n"
puts "ancestors #{DogPrepend.ancestors}"
# [Movement, DogPrepend, Object, PP::ObjectMixin, Kernel, BasicObject]
puts "singleton class #{DogPrepend.singleton_class}"
#  #<Class:DogPrepend>
puts "instance_methods(false) #{DogPrepend.instance_methods(false)}"
# [:bark]
puts "DorPrepend.new.methods[0..1] #{DogPrepend.new.methods[0..1]}"
# [:move, :bark]
puts "singleton_class.ancestors #{DogPrepend.singleton_class.ancestors}"
# [#<Class:DorPrepend>, #<Class:Object>, #<Class:BasicObject>, Class, Module, Object, PP::ObjectMixin, Kernel, BasicObject]
puts "singleton_methods #{DogPrepend.singleton_methods}"
# [:howl]

module Breath
  extend Movement

  def self.breath_in
    puts 'breathing in'
  end
end

puts "\n***** DogPrepend ****\n"
puts "ancestors #{Breath.ancestors}"
# [Breath]
puts "singleton class #{Breath.singleton_class}"
#   #<Class:Breath>
puts "instance_methods(false) #{Breath.instance_methods(false)}"
# []
# puts "DorPrepend.new.methods[0..1] #{Breath.new.methods[0..1]}"
# can't create instances from modules
puts "singleton_class.ancestors #{Breath.singleton_class.ancestors}"
# [#<Class:Breath>, Movement, Module, Object, PP::ObjectMixin, Kernel, BasicObject]
puts "singleton_methods #{Breath.singleton_methods}"
# [:breath_in, :move]