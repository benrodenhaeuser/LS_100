arr = [1, 3, 5, 7, 9, 11]


def appears_in? array, number
  result = false
  array.each do
    |value| result = true if value == number
  end
  result
end

p appears_in? arr, 3 # => "true"
p appears_in? arr, 11 # => "true"
p appears_in? arr, 10 # => "false"
