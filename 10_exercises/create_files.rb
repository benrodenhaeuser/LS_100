# lets create the files for our 17 exercises, using the format "01.rb"

def create_file(filename,filenumber)
  unless File.exist?(filename) # don't want to mess with existing files!
    file = File.open(filename,"w") { |file| file.write("\# exercise #{filenumber}") }
    puts "created file #{filename}"
  end
end

for i in (1..17) # there are 17 exercises
  if i < 10
    filenumber = "0#{i}"
    filename = "0#{i}.rb"
  else
    filenumber = "#{i}"
    filename = "#{i}.rb"
  end
  create_file(filename,filenumber)
end
