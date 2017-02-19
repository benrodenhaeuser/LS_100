# What method could you use to find out if a Hash contains a specific value in it? Write a program to demonstrate this use.

def contains(hash, value)
  result = false
  values = hash.values
  values.each { |val| result = true if val == value }
  result
end

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

# test
# p contains(person, "Bob")
# p contains(person, "Alice")

# there is also a built-in hash instance method for this person: has_value?

p person.has_value? "Bob"
