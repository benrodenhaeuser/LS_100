# generate an empty sample file in a specified directory
# with a specified extension
# and a random filename

def create_file(directory, extension)
    random_string = (0...8).map { (65 + rand(26)).chr }.join # found this on stack overflow ...
    filename = random_string + extension
    file_path = "./" + directory + filename
    new_file = File.open(file_path,"w")
    new_file.close
end

# let's produce a number of test files
directory = "./test_files/"  # NOTE: directory must already exist!
3.times { create_file(directory,".txt") }
5.times { create_file(directory,".json") }
2.times { create_file(directory,".csv")  }
