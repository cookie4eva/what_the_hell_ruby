class CheckPrivateMethod

  private

  def private_method_example
    'I am private'
  end
end

puts CheckPrivateMethod.new.send(:private_method_example) # I am private

begin
  Body.new.public_send(:private_method_example)
rescue NoMethodError => e
  puts e.message #  uninitialized constant Body (NameError)
end

# Links to where this idea is presented in the Ruby code
# https://github.com/ruby/ruby/blob/eff15a269fdc37d2b09cf1dfe8c1b1bf6e377a32/object.c#L4515
# https://github.com/ruby/ruby/blob/5357ceb1ca454e2b3c5c173c638054cf705e4752/ext/io/console/console.c#L86
# https://github.com/ruby/ruby/blob/bb71a128eb6e901d3d7deb895971a6706eb7110d/variable.c#L3370
