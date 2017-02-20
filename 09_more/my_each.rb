class Array
  def my_each(&block)
    for elem in self
      block.call(elem)
    end
  end
end

[0,1,2].my_each do |elem|
  puts elem
end
