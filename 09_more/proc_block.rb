proc = Proc.new { |x| puts x }

array = [0,1]

array.each { |item| proc.call(item) }

# So that's a block that calls a proc
