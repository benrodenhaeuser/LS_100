x = "hi there"
my_hash = {x: "some value"} # the key is a symbol (somewhat disguised)
my_hash2 = {x => "some value"} # the key is a string, namely "hi there"

p my_hash == { :x => "some value" } # => true
p my_hash2 == { :x => "some value" } # => false
