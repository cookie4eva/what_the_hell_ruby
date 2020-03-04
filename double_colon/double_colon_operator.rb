module MyModule
  MODULE_CONSTANT = "module_constant".freeze
  def self.self_module_method
    'Self module method'
  end

  class ClassInModule
    MORE_CLASS_CONSTANTS = 'more_class_constants'.freeze
  end
end

class MyClass
  CLASS_CONSTANT = 'class_constant'.freeze
  def self.self_class_method
    'Self class method'
  end

  def class_method
    'Class method'
  end
end

puts MyModule # MyModule
puts MyModule::MODULE_CONSTANT # module_constant
puts MyModule::self_module_method # Self module method
puts MyModule::ClassInModule # MyModule::ClassInModule
puts MyModule::ClassInModule::MORE_CLASS_CONSTANTS # more_class_constants
puts MyClass::CLASS_CONSTANT # class_constant
puts MyClass::self_class_method # Self class method

begin
  MyClass::class_method
rescue NoMethodError => e
  puts e.message # undefined method `class_method' for MyClass:Class
end

puts MyClass.new::class_method # Class method
# https://github.com/ruby/ruby/blob/master/variable.c#L260
