class Developer
  def code
    'hello world'
  end
end

java_developer = Developer.new

puts java_developer.code # hello world
puts java_developer.methods.include?(:code) #true
puts java_developer.methods.include?(:ninja) #false

def java_developer.code
  'hello new world'
end

def java_developer.ninja
  'I am ninja'
end

puts java_developer.code # hello new world
puts java_developer.ninja # I am ninja

ruby_developer = Developer.new
puts ruby_developer.code # hello world

puts java_developer.methods.include?(:code) #true
puts java_developer.method(:code) # #<Method: #<Developer:0x007f840a0b09b0>.code>
puts java_developer.method(:ninja) # #<Method: #<Developer:0x007f840a0b09b0>.ninja>

puts ruby_developer.methods.include?(:code) #true
puts ruby_developer.method(:code) # #<Method: Developer#code>
