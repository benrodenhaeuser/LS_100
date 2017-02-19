def which_interval int
  if (0 <= int) && (int <= 50)
    puts "#{int} is between 0 and 50"
  else
    if (51 <= int) && (int <= 100)
      puts "#{int} is between 51 and 100"
    else
      puts "#{int} is larger than 100"
    end
  end
end

puts "Give me an integer"
int = gets.chomp.to_i
which_interval int

# puts which_interval 43
# puts which_interval 60
# puts which_interval 120
