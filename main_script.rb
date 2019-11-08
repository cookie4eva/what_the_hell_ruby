
puts "This is who I am #{self}" #main
puts "This is my class type #{self.class}" #Cbject
puts "This is my singleton class #{self.singleton_class}" # #<Class:#<Object:0x007fec0108dc80>>

def check_this_method
  puts "\n\ncheck me out!!!!\n\n"
end

puts "This are my singleton methods #{self.singleton_methods.include?(:check_this_method)}" #false
puts "This are my self.methods #{self.methods.include?(:check_this_method)}" #false
puts "This are my methods #{self.private_methods.include?(:check_this_method)}" #true

def self.what_will_happen
  puts "\n\n I'm really curious"
end

puts "This are my self methods #{self.private_methods.include?(:what_will_happen)}" #false
puts "This are my self singleton methods #{self.singleton_methods.include?(:what_will_happen)}" #true
