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

begin
  Body.pick_nose
rescue NoMethodError => e
  puts e.message # undefined method `pick_nose' for Body:Class
end

puts Body.pick_ears # I'm gonna pick my ears

body = Body.new

begin
  body.pick_nose
rescue NoMethodError => e
  puts e.message # private method `pick_nose' called for #<Body:0x007fbed1152c18>
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

puts ProgrammingLanguage.first # 'C'

begin
  ProgrammingLanguage.languages.count
rescue NoMethodError => msg
  puts msg # private method `languages' called for ProgrammingLanguage:Class
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

puts ComputerOS.first # "Windows"

begin
  ComputerOS.all_os.count
rescue NoMethodError => msg
  puts msg # undefined method `all_os' for ComputerOS:Class
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
