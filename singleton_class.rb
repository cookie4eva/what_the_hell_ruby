class Friend
  puts self == Friend #true

  def i_am
    puts self # #<Friend:0x007ff45485b768>
    puts self.class # Friend

    self
  end

  def self.what_am_i
    puts self # Friend
    puts self.class # Class

    self
  end
end


f = Friend.new
puts f.i_am == f # true
puts Friend.what_am_i == Friend # true
puts f.singleton_class # #<Class:#<Friend:0x007faa498522a8>>
puts f.singleton_class.methods.include?(:what_am_i) #true
puts f.singleton_class.ancestors.inspect # [#<Class:#<Friend:0x007faa498522a8>>, Friend, Object, PP::ObjectMixin, Kernel, BasicObject]