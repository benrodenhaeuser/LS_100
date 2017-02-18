file = File.open("test_file.txt", "a+")
file << "Hello"
content = File.read("test_file.txt")
puts content # => "Hello"
File.delete("test_file.txt")

file_2 = File.open("test_file_2.txt", "a+")
file_2 << "Hello"
content = file_2.read
puts content # => nil
File.delete("test_file_2.txt")
