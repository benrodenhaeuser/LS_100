# exercise 08
hsh_1 = { symbol_1: "value_1", symbol_2: "value_2" }
hsh_2 = { :symbol_1 => "value_1", :symbol_2 => "value_2" }

hsh_3 = Hash.new
hsh_3[:symbol_1] = "value_1"
hsh_3[:symbol_2] = "value_2"

p (hsh_1 == hsh_2) && (hsh_2 == hsh_3)
