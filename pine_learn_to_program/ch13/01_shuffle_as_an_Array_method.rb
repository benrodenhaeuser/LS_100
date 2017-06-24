class Array
  def shuffle
    shuffled = []
    array = self
    while array != []
      new_array = []
      # random_index will be used to pick an element from array to shuffle
      random_index = rand(0...array.length)
      current_index = 0

      array.each do |element|
        # array[random_index] goes into shuffled
        if current_index == random_index
          shuffled.push(element)
        # everything else goes into new_array
        else
          new_array.push(element)
        end
        current_index += 1
      end

      # prepare array for the next iteration
      array = new_array
    end
    return shuffled
  end
end


puts [0,1,2,3,4,5,6,7,8,9,10].shuffle
