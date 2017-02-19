def proc_test(number_1, number_2)
  proc.call(number_1, number_2)
end

proc = Proc.new { |num_1,num_2| puts "#{num_1} + #{num_2} = #{num_1+num_2}" }

proc_test(1,2)
