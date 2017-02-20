def execute(&block)
  block # this just returns the block! (as a proc)
end

execute { puts "Hello from inside the execute method!" }

# ^ does not print anything, because the block is never called inside of execute.
# the return value of execute is a proc (why is that?)

# the following will print the argument of puts:
execute { puts "Hello from inside the execute method!" }.call

# another (better) way of fixing the problem is to change "block" into "block.call" in the body of the execute method
