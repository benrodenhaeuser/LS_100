array = [0, 1, 2, 3]

array_2 = array.each { |elem| elem = 0 }

puts array_2.to_s

# this prints out [0,1,2,3], because the return value of each is the calling array

array_3 = array.map { |elem| elem = 0 }

puts array_3.to_s

# this prints out [0,0,0,0], because the return value of map is a new (transformed) array

# funny:

array.each { |elem| array.delete(elem) }

# the above returns [1,3] (!)
# this is because of the way "each" works. It considers each index of the given (!) array. So since we are mutating the array using the "delete" calls, we are not actually considering all array elements.
# so what the above statement does in general is it deletes the even-indexed elements of a given array
# Crazy! "That’s a prime example of why you shouldn’t mutate an object while iterating over it." (comment in the Slack channel)

puts array
puts array.to_s
# ^ note that the two preceding puts statements do not produce the same output!
