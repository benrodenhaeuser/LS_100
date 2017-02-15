require "pry"

def foo
  b = 10
  return nil
end

puts "until here"
pry.binding
