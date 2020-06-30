class CheckVariables
  @@class_variable_test = {
    test1: 'This is test 1',
    test2: 'This is test 2'
  }

  @instance_variable_test = {
    test3: 'This is test 3',
    test4: 'This is test 4'
  }

  def self.my_test_method
    @@class_variable_test
  end
end

begin
  CheckVariables::class_variable_test
rescue NoMethodError => msg
  puts msg # undefined method `class_variable_test' for CheckVariables:Class
end

begin
  CheckVariables.class_variable_test
rescue NoMethodError => msg
  puts msg # undefined method `class_variable_test' for CheckVariables:Class
end

begin
  CheckVariables.instance_variable_test
rescue NoMethodError => msg
  puts msg # undefined method `instance_variable_test' for CheckVariables:Class
end

check_variables = CheckVariables.new

begin
  check_variables.class_variable_test
rescue NoMethodError => msg
  puts msg # undefined method `class_variable_test' for #<CheckVariables:0x007fbf6007dbf0>
end

begin
  check_variables.instance_variable_test
rescue NoMethodError => msg
  puts msg # undefined method `instance_variable_test' for #<CheckVariables:0x007fcbf68141f0>
end

puts CheckVariables.my_test_method # {:test1=>"This is test 1", :test2=>"This is test 2"}