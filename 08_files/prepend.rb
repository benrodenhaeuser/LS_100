# prepend a string to a file (I am sure there is a built-in method for this, but hey ...)
def prepend string, filename
  file_content = File.read(filename) # store the old content of the file
  file_new_content = string + "\n" + file_content # prepare the new content of the file
  File.open(filename, "w+") { |file| file.puts file_new_content } # write the new content to the file
end

# puts contents of file to console with a timestamp
def puts_contents(filename)
  my_file = File.read(filename)
  puts "This is the content of the file at " + Time.new.to_s
  puts my_file
  puts
end

# WE ARE NOW GOING TO PLAY AROUND A BIT, and put our methods to use

# Let's create a file and write a string to it
my_file = File.new("simple_file.txt", "w+")
my_file.puts("Step 1: Adding some content")
my_file.close

# Let's check what the file looks like by printing to the console (we will do this every step of the way)
puts_contents("simple_file.txt")

# Open our file in "read-write" mode (that's the "a+" argument), and add a line
File.open("simple_file.txt", "a+") { |file| file.puts "Step 2: Adding another line" }
# ^ if we pass a block to File.open like here, then the file will be automatically closed after the block!

puts_contents("simple_file.txt")

# Open our file in "read-write" mode again, with a slightly different syntax, adding another line
File.open("simple_file.txt", "a+") { |file| file << "Step 3: Adding more stuff" }

puts_contents("simple_file.txt")

# Now we prepend a line
prepend("First line: this one was added later!","simple_file.txt")

puts_contents("simple_file.txt")

# This was fun, but now we are going to get rid of the file
File.delete("simple_file.txt")
