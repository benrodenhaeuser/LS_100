# A method that picks files in the current directory by file extension
# and reports filenames of the files with that extension

def pick_and_report(extension)
  d = Dir.new(".") # the current working directory
  while file = d.read do
    puts "file #{file} has extension #{extension}" if File.extname(file) == extension
  end
end

# try it with ".rb"
pick_and_report(".rb")
