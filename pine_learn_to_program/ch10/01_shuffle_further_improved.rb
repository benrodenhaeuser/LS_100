# (This is basically the solution from the book, which is a lot simpler than mine!)

# main idea: succesively select random elements from the given array;
# use the selected elements to successively build up a new (shuffled) array from left to right.

def shuffle array
  shuffled = []
  while array != []
    new_array = []
    random_index = rand(0...array.length)
    current_index = 0

    array.each do |element|
      if current_index == random_index
        shuffled.push(element)
      else
        new_array.push(element)
      end
      current_index += 1
    end

    array = new_array
  end
  return shuffled
end

# test
puts shuffle([0,1,2,3,4,5,6,7,8,9,10])
