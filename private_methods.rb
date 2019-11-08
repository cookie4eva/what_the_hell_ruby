require 'pry'

#Example 1
class Body

  def scratch_forehead
    "I'm gonna scratch forehead"
  end

  private

  def pick_nose
    "I'm gonna pick my nose"
  end

  def self.pick_ears
    "I'm gonna pick my ears"
  end
end

class Everybody
  def high_five
    "Let's high five"
  end

  def self.names
    ['Hila', 'Rotem', 'Leanne']
  end
end

puts "Can I get a list of every ones names? #{Everybody.methods.include?(:names)}" #true
puts "Can everyone high five together? #{Everybody.methods.include?(:high_five)}" # false

e = Everybody.new

puts "Can I know the names of everyone? #{e.methods.include?(:names)}" # false
puts "Can I high five with someone? #{e.methods.include?(:high_five)}" #true

begin
  Body.pick_nose
rescue NoMethodError => e
  puts "Can't pick your nose in public: #{e.message}" # undefined method `pick_nose' for Body:Class
end

puts "Picking your ears is controversial but ok: #{Body.pick_ears}" # I'm gonna pick my ears

body = Body.new

begin
  body.pick_nose
rescue NoMethodError => e
  puts "you shouldn't pick you nose even when your alone: #{e.message}"
  # private method `pick_nose' called for #<Body:0x007fbed1152c18>
end


begin
  body.pick_ears
rescue NoMethodError => e
  puts "Your alone, but its not that exciting without a crowd : #{e.message}"
  # undefined method `pick_ears' for #<Body:0x007fbed1152c18>
end



#Example 2
class ProgrammingLanguage
  def self.first
    languages.first
  end

  def self.languages
    ['C', 'Java', 'Ruby']
  end

  private_class_method :languages
end

puts "My first programming language #{ProgrammingLanguage.first} " # "C"
begin
  ProgrammingLanguage.languages.count
rescue NoMethodError => msg
  puts "Can't access languages: #{msg}"
  # private method `languages' called for ProgrammingLanguage:Class
end


# Example 3
class ComputerOS
  class << self
    def first
      all_os.first
    end

    private

    def all_os
      ['Windows', 'mac']
    end
  end
end

puts "My first programming language #{ComputerOS.first} " # "Windows"
begin
  ComputerOS.languages.count
rescue NoMethodError => msg
  puts "Can't access languages: #{msg}"
  # undefined method `languages' for ComputerOS:Class
end

#example 4
puts Body.new.send(:pick_nose)
binding.pry
begin
  Body.new.public_send(:pick_nose)
rescue NoMethodError => e
  puts e.message
end

# Links to where this idea is presented in the Ruby code
# https://github.com/ruby/ruby/blob/eff15a269fdc37d2b09cf1dfe8c1b1bf6e377a32/object.c#L4515
# https://github.com/ruby/ruby/blob/5357ceb1ca454e2b3c5c173c638054cf705e4752/ext/io/console/console.c#L86
# https://github.com/ruby/ruby/blob/bb71a128eb6e901d3d7deb895971a6706eb7110d/variable.c#L3370