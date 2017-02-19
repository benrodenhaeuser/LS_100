def block_test(number_1, number_2, &block)
  block.call(number_1, number_2)
end

block_test(1,2) { |num_1,num_2| puts "#{num_1} + #{num_2} = #{num_1+num_2}" }
