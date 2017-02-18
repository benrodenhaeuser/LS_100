# print the even numbers from 0 to 10 (not including 0, but including 10)

a = 0
loop do
  a += 2
  if a == 4
    next # skip 4
  end
  puts a
  break if a == 10
end
