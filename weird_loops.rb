a = (1..20).each_with_object([]) do |i, list|
  list << i if (i == 3)..(i == 6)
end.join(',')

puts a # 3,4,5,6

a = (1..20).each_with_object([]) do |i, list|
  list << i if (i == 3)..(list.size == 1)
end.join(',')

puts a # 3,4