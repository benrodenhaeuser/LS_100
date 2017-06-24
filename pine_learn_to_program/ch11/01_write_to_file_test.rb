# we produce a file, and write a string to it, and then read it back

filename = 'testfile.txt'
test_string = 'Hello file!'
File.open filename, 'w' do |file|
  file.write test_string
end
read_string = File.read filename
puts(read_string == test_string)

# filename = ​'testfile.txt'​
# test_string = ​'Hello file!'
# ​#  The 'w' here is for write-access to the file,​
# ​#  since we are trying to write to it.​
# File.open filename, ​'w'​ ​do​ |file|
#   file.write test_string
# ​end​
# read_string = File.read filename
# puts(read_string == test_string)
