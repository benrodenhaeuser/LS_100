# exercise 09
h = { a:1, b:2, c:3, d:4 }

# get the value of key :b
value = h[:b]

# add pair {e:5}
h[:e] = 5

# remove all pairs whose value is less than 3.5

## with a for loop
keys = h.keys
for key in keys
  if h[key] < 3.5
    h.delete(key)
  end
end

# with delete_if (Launch School solution)
h.delete_if { |k, v| v < 3.5 }

puts h
