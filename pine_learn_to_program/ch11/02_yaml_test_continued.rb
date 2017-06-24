# this script (copied from Learn to Program) shows how to write to a yaml file, and read back from it
# it defines two auxiliary methods for making that simple

require 'yaml'

# helpful methods to save something to yaml file ...
def yaml_save object, filename
  File.open filename, 'w' do |f|
    f.write(object.to_yaml)
  end
end

# ... and to read from a yaml file
def yaml_load filename
  yaml_string = File.read filename
  YAML::load yaml_string
end

# sample data
test_array = ["carrots", "sticks", "guns", ["pistols", "Glock"]]

filename = 'another_yaml_test.txt'

# save it
yaml_save test_array, filename

# load it
read_array = yaml_load filename

# test it
puts(read_array == test_array)
