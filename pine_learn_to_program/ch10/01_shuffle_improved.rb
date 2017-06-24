# shuffle array randomly
def shuffle_array array
  shuffled_array = []
  permuted_nums_array = permute_segment_up_to( array.length - 1 )
  for i in (0...array.length)
    shuffled_array[i] = array[ permuted_nums_array[i] ]
  end
  return shuffled_array
end

# produce arbitrary permutation of segment of natural numbers from 0 to n
# the (permuted) segment is represented by an array
def permute_segment_up_to n
  segment = (0..n).to_a # segment is an array of numbers in the range 0 to n
  index = 0
  permuted_segment = [] # here we will store our permutation of the numbers in segment
  while segment != []
    random_index = rand(0..segment.length - 1)
    permuted_segment[index] = segment[random_index]
    segment.delete_at(random_index) # TODO: method hunting! this should be unfolded in a loop
    index += 1
  end
  return permuted_segment
end

# test
puts shuffle_array([1, 2, 3, 4, 5, 6, 6, 6, 6, 6])
