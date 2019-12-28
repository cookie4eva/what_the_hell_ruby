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
