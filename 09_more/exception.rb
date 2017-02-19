# exception_example.rb

names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something went wrong!"
  end
end

# without the exception handling, the code raises an exception: "undefined method 'length' for nil:NilClass (NoMethodError)"
# as a consequence, the program aborts, and we never get to know about frank!
# but with the exception handling, the each iterator continues to deal with frank.
