# implement method to read a string from a file and convert it to an array of hashes
# the string to read will consist of a number of segments separated by newline characters,
# where each segment adheres to the following format:
# >> ben rodenhauser, 17.01.1977, berlin <<
# the array of hashes should be an array consisting of hashes that look as follows:
# { name: "ben", birthday: "17.01.1977", city: "berlin"}

# from string stored in file to array of hashes

def get_array_of_hashes( filename )
  string = read_string_from_file( filename )
  convert_to_array_of_hashes( string )
end

def read_string_from_file( filename )
  string = File.read filename
  return string
end

def convert_to_array_of_hashes( string )

  array = string.split("\n")

  array_of_arrays = []
  array_of_hashes = []

  array.each do |entry|
    array_of_arrays.push( entry.split(", ") )
  end

  array_of_arrays.each do |segmented_entry|
    array_of_hashes.push( { name: segmented_entry[0], birthday: segmented_entry[1], city: segmented_entry[2] } )
  end

  return array_of_hashes

end


# test
sample_data = get_array_of_hashes( "sample_data.txt" )
puts sample_data
puts sample_data[0][:name]
