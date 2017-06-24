# (this expands on the previous exercise)
# we are given a file that contains a string that looks like this:
# column 1, column 2, column 3, ...
# entry_11, entry_12, entry_13, ...
# ...
# the file will have no "data gaps"
# we don't know in advance how many columns there are, nor what their titles are
#
# the task is to convert the string (which has an obvious table/matrix structure) into an array of hashes
# the hash for the first row should look something like this:
# { column1: entry11, column 2: entry_12, ... }
# and so on for the other rows
#
# our strategy is to first make the matrix structure of the string explicit
# by converting it to a two-dimensional array
# then we turn each array in that array (i.e., each row in our table) in the two-dimensional array into a hash

# main method
def get_hashes( filename )
  # read the string from the file:
  string = read_string_from_file( filename )
  # convert the string to a matrix representation:
  matrix = convert_to_matrix( string )
  # extract the data from the matrix:
  data_matrix = get_column_data( matrix )
  # extract the titles from the matrix:
  column_titles = get_column_titles( matrix )
  # produce the hash representation:
  hashes = convert_to_hashes( data_matrix, column_titles )
  return hashes
end

# get the column titles (useful for testing)
def get_titles( filename )
  string = read_string_from_file( filename )
  matrix = convert_to_matrix( string )
  column_titles = get_column_titles( matrix )
  return column_titles
end

# read the file
def read_string_from_file( filename )
  string = File.read filename
  return string
end

# convert string to matrix
def convert_to_matrix( string )
  lines = string.split("\n")
  matrix = []
  lines.each do |line|
    matrix.push( line.split(", ") )
  end
  return matrix
end

# get title row from matrix (the first row)
def get_column_titles( matrix )
  return matrix.first
end

# get data from matrix (everything but the first row)
def get_column_data( matrix )
  return matrix.drop(1)
end

# convert data matrix to hashes using column titles
def convert_to_hashes( data_matrix, column_titles )
  hashes = []
  data_matrix.each_with_index do |entry,index_1|
    hashes[index_1] = {}
    column_titles.each_with_index do |title,index_2|
      hashes[index_1][title] = entry[index_2]
    end
  end
  return hashes
end

# test
sample_data = get_hashes( "sample_data_2.txt" )
titles = get_titles( "sample_data_2.txt")
puts sample_data
puts titles
puts sample_data[0][titles[0]]
puts sample_data[2][titles[1]]
