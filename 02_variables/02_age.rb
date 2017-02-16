puts "Please enter your age!"
age = gets.chomp.to_i

for i in [10, 20, 30, 40 ]
  puts "In #{i} years you will be:"
  puts age + i
end
