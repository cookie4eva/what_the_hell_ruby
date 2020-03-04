module MyModule
  MODULE_CONSTANT = "module_constant".freeze
  def self.self_module_method
    'Self module method'
  end

  class ClassInModule
    MORE_CLASS_CONSTANTS = 'class_constants'.freeze

    def class_method
      'Class method'
    end
  end
end

puts MyModule # MyModule
puts MyModule::MODULE_CONSTANT # module_constant
puts MyModule::self_module_method # Self module method
puts MyModule::ClassInModule # MyModule::ClassInModule
puts MyModule::ClassInModule::MORE_CLASS_CONSTANTS # class_constants
puts MyModule::ClassInModule.new::class_method # Class method
puts ::MyModule # MyModule