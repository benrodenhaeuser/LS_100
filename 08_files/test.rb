# file = File.open("test_file.txt", "a+")
# file << "Hello"
# file.close
# content = File.read("test_file.txt")
# puts content # => "Hello"
# File.delete("test_file.txt")

file_2 = File.open("test_file_2.txt", "a+")
file_2 << "Hello"
file_2.close
file_2 = File.open("test_file_2.txt", "a+")
content = file_2.read
content_2 = file_2.read
puts content 
puts content_2
File.delete("test_file_2.txt")
