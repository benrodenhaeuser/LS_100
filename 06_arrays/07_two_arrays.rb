original = [0, 1, 2, 3, 4, 5, 6, 7]
copy = [ ]

original.each { |value| copy << value + 2 }

p original
p copy
