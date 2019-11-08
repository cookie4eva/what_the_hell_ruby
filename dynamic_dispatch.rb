class Developer
  def code
    puts 'hello world'
  end
end

java_developer = Developer.new
java_developer.code # hello world

def java_developer.code
  puts 'hello new world'
end
java_developer.code # hello new world

ruby_developer = Developer.new
ruby_developer.code # hello world

puts java_developer.singleton_class.ancestors.inspect
# [#<Class:#<Developer:0x007f840a0b09b0>>, Developer, Object, Kernel, BasicObject]
puts java_developer.method(:code) # #<Method: #<Developer:0x007f840a0b09b0>.code>
puts java_developer.singleton_class.instance_methods(false).inspect # [:code], from the "hello new world"
puts Developer.instance_methods(false).inspect # [:code], from the definition inside developer

puts ruby_developer.method(:code) # #<Method: Developer#code>
puts ruby_developer.singleton_class.instance_methods(false).inspect # [], no dynamic definition here