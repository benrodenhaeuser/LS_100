# A method that goes through a directory and produces a hash
# where the hash keys are all the file extensions such that there are files with that extension in the directory
# and the value to each key is an array of filenames with the extension given by the key

def create_hash(directory)
  hash = { }
  d = Dir.new(directory)
  while file_name = d.read do
    ext = File.extname(file_name)
    if ext != "" # file has a "proper" extension (to exclude directories)
      if hash[ext] # it's not the first file with that extension: append!
        hash[ext] << file_name
      else # it's the first one: create the array!
        hash[ext] = [file_name]
      end
    end
  end
  hash
end

### Now let's redo this using the Pathname class instead of Dir (just to get a little familiar with pathname)

require "pathname"

def create_hash_variant(directory)
  hash = { }
  pn = Pathname.new(directory)
  pn.entries.each do |file|
    # puts file.basename
    ext = file.extname
    file_name = file.basename.to_s # convert pathname object to string
    if ext != "" # file has a "proper" extension (to exclude directories)
      if hash[ext] # it's not the first file with that extension: append!
        hash[ext] << file_name
      else # it's the first one, so we need to create the array
        hash[ext] = [file_name]
      end
    end
  end
  hash
end

# test
puts create_hash(".")
puts create_hash_variant(".")
puts create_hash(".") == create_hash_variant(".") # true
