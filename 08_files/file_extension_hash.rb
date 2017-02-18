# A method that walks through a directory and produces a hash
# where the hash keys are all the file extensions such that there are files with that extension in the directory
# and the value for each key is an array of filenames with the extension given by the key
# these arrays are sorted alphabetically

def create_hash(directory)
  hash = { }
  d = Dir.new(directory)
  while file_name = d.read do # at some point, d.read will return nil, so the condition fails, so the loop terminates
    ext = File.extname(file_name) # grab the extension
    if ext != "" # if file has a "proper" extension (to exclude directories) ...
      if hash[ext] # if file is not the first file with that extension ...
        hash[ext] << file_name # ... append to existing array
      else # if file is the first file with that extension ...
        hash[ext] = [file_name] # ... create array, put file in it
      end
    end
  end
  hash.each_key { |key| hash[key].sort! } # sort files alphabetically
  hash # done!
end

# test: create a hash
hash = create_hash("./test_files") # in test_files, we have stored some test files ...

# just for fun: let's turn the hash into a sorted array,
# sorted by extension first, and by filename second

def get_extensions hash
  extensions = [ ]
  hash.each_key { |key| extensions << key }
  extensions
end

extensions = get_extensions(hash).sort! # sort extensions alphabetically
sorted_files = [ ]
extensions.each do |extension|
  sorted_files += hash[extension]
end
puts sorted_files
