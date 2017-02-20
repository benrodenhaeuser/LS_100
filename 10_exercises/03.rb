# exercise 03
ary = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

ary_odd = ary.select { |elem| elem % 2 == 1 }

p ary_odd
