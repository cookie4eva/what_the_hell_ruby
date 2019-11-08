ordered = {}

puts ordered.class # Hash
puts ordered.singleton_class # #<Class:#<Hash:0x007fb3e10fa2c0>>

ordered[:number1] = 1
ordered[:number2] = 2
ordered[:number3] = 3

puts ordered.keys.join(',') # number1,number2,number3

other_ordered = {
  number1: 1,
  number3: 3,
  number2: 2
}

puts other_ordered.keys.join(',') # number1,number3,number2