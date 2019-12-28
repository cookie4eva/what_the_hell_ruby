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
