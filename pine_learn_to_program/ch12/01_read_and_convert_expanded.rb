# this expands on the previous exercise
# we are now assuming that our file has a title row which gives the names for the columns
# but we don't know in advance the names of the columns, nor the number of columns
#
# so the file will look something like this:
# column 1, column 2, column 3, ...
# entry_11, entry_12, entry_13, ...
# ...



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

  # first, we make an array containing one entry for each line in our file
  array = string.split("\n")

  # next, we break down the individual entries into arrays of their own, using the comma separation

  array_of_arrays = []
  array_of_hashes = []

  array.each do |entry|
    array_of_arrays.push( entry.split(", ") )
  end

  # now, we store the title row separately, and drop it from the entries array
  column_titles = array_of_arrays.first
  entries = array_of_arrays.drop(1)

  # finally, we make the array of hashes
  entries.each_with_index do |entry,index_1|
    array_of_hashes[index_1] = {}
    column_titles.each_with_index do |title,index_2|
      array_of_hashes[index_1][title] = entry[index_2]
    end
  end

  return array_of_hashes

end

# test
sample_data = get_array_of_hashes( "sample_data_2.txt" )
puts sample_data
# puts sample_data[0][:name]
