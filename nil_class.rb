begin
  b.nil?
rescue StandardError => e
  puts e.message # undefined local variable or method `b' for main:Object
end

a = nil
puts a.nil? # true
puts nil.nil? # true
puts nil.class # NilClass
puts nil.singleton_class # NilClass

puts nil.class.ancestors.inspect # [NilClass, Object, Kernel, BasicObject]
puts nil.class.singleton_class.ancestors.inspect
# [#<Class:NilClass>, #<Class:Object>, #<Class:BasicObject>, Class, Module, Object, Kernel, BasicObject]
