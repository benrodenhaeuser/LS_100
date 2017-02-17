# Method to copy the contents of file_1 to file_2
def copy(file_1,file_2)
  File.open(file_2,"w+") { |file| file.write(File.read(file_1)) }
end

# Produce a file so that we can test that it works
File.open("file_to_be_copied.txt","w+") { |file| file.write "sample content" }

# Try out the copy method
copy("file_to_be_copied.txt", "copied_file.txt")

# Check whether both files have the same content
def equal?(file_1,file_2)
  content_1 = File.read(file_1)
  content_2 = File.read(file_2)
  content_1 == content_2
end

puts equal?("file_to_be_copied.txt", "copied_file.txt")
# => true

# Clean up
File.delete("file_to_be_copied.txt")
File.delete("copied_file.txt")
