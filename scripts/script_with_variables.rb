
local_var = "Local in main"
@instance_var = "Instance in main"

def assign_values_in_script
  local_var = "Local in method"
  @instance_var = "Instance in method"
end

assign_values_in_script

puts @instance_var # Instance in method
puts local_var # Local in main