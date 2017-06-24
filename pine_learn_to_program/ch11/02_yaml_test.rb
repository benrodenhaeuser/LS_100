# this script (copied from Learn to Program) shows how to write to a yaml file, and read back from it

require 'yaml'
test_array = [ "Peter", "Alicia", "Eli"]

# turn our test_array into valid YAML
test_string = test_array.to_yaml

# store the yaml in a file
filename = 'yaml_testfile.txt'
File.open filename, 'w' do |f|
  f.write test_string
end

# read the string back from our file
read_string = File.read filename

# produce an array from the string we just read (works because it's YAML)
read_array = YAML::load read_string

# did it work?
puts(read_string == test_string)
# => true
puts(read_array == test_array)
# => true
