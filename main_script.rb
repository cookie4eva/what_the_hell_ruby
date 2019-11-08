
puts self #main
puts self.class #Object
puts self.singleton_class # #<Class:#<Object:0x007fec0108dc80>>

def check_this_method
  'check me out!!!!'
end

puts self.singleton_methods.include?(:check_this_method) # false
puts self.methods.include?(:check_this_method) # false
puts self.private_methods.include?(:check_this_method) # true

def self.what_will_happen
  'Im really curious'
end

puts self.private_methods.include?(:what_will_happen) # false
puts self.singleton_methods.include?(:what_will_happen) # true
