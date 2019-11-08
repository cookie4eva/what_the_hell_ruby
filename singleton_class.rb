module BestFriend
  puts "Inside module context: #{self == BestFriend}" #true

  def best_friend
    self
  end
end

class Friend
  include BestFriend
  puts "Inside class context: #{self == Friend}" #true

  def i_am
    puts "Instance is: #{self}" ##<Friend:0x007ff45485b768>
    puts "Instance class is: #{self.class}" #Friend
    self
  end

  def self.what_am_i
    puts "Self is: #{self}" #Friend
    puts "Self class is: #{self.class}" #Class
    self
  end
end


f = Friend.new
puts "Am I me? #{f.i_am == f}" #true
puts "What am I? #{Friend.what_am_i == Friend}" #true
puts "Best friend? #{f.best_friend == f}" #true
