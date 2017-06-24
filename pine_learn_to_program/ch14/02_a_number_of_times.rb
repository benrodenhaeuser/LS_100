# a_number_of_times takes a block and runs it n times

def a_number_of_times n, &block
  for i in (1..n)
    block.call
  end
end

a_number_of_times 10 do
  puts "what the heck!"
end

a_number_of_times 4 do
  puts "well well well"
end
