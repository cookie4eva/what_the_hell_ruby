module BestFriend
  puts self == BestFriend #true

  def best_friend
    self
  end
end

class Friend
  include BestFriend
  puts self == Friend #true

  def i_am
    puts self # #<Friend:0x007ff45485b768>
    puts self #Friend
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
puts f.best_friend == f # true
