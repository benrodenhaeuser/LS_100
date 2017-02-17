# generate an empty sample file in a specified sub-directory of current working directory
# with a specified extension
# and a random filename

def create_file(directory,extension)
    random_string = (0...8).map { (65 + rand(26)).chr }.join
    filename = random_string + extension
    file_path = "./" + directory + filename
    new_file = File.open(file_path,"w")
    new_file.close
end

3.times { create_file("./test_files/",".txt") }
5.times { create_file("./test_files/",".json") }
2.times { create_file("./test_files/",".csv")  }
