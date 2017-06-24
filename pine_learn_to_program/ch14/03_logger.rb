=begin
Write a method called log that takes a string description of a block (and, of course, a block). It should puts a string telling you it started the block and another string at the end telling you it finished and also telling you what the block returned. Test your method by sending it a code block.
=end


def log description, &block
  puts "About to start block #{description}"
  result = block.call
  puts "Block #{description} is done, resulted in #{result}"
end

log("'nice block'") do
  puts "happy blocking!"
  "nothing much of interest"
end
