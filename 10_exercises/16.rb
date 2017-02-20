# exercise 16

# Turn the following array into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

# a_2 = a.map { |string| string if string.split(" ").length <= 1 }

a_2 = a.map { |entry| entry.split(" ") }.flatten!

p a_2
