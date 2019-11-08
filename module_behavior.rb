module Movement
  def move
    puts 'I am moving my leg'
  end

  def self.move_all
    puts 'I am moving all my legs'
  end
end

module Movement
  module Walk

  end
end

module EnumLike
  ONE = 'one'.freeze
  TWO = 'two'.freeze
end

module StaticLike
  def self.some_util
    'some util'
  end
end

# module Run < Movement
#
# end
# Fails - unexpected

puts Movement.ancestors.inspect # [Movement]
puts Movement::Walk.ancestors.inspect # [Movement::Walk]
puts EnumLike::ONE # one
puts StaticLike.some_util # some util