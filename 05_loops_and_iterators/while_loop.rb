# print the even numbers from 0 to 10 (not including 0, but including 10)

puts "Give me a positive integer"
number = gets.chomp.to_i
while number != 0
  puts number
  number -= 1
end
