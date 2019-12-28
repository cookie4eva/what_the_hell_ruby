
arr = [1, 2, 3]

def manipulate_array(array)
  array << 4
  array << 5
end

manipulate_array(arr)

puts arr.join(",") # 1,2,3,4,5
