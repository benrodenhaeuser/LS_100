def factorial number
  number = number.to_i

  if number == 1
    number
  else
    if number > 0
      number * factorial(number-1)
    else
      puts "wrong input"
    end
  end
end

for number in (5..8)
  puts factorial(number)
end

puts factorial(-1)
puts factorial("Ben")
