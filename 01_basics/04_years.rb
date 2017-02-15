years = [1975, 2004, 1956, 2014]

years.each { |year| puts year }

puts

for year in years
  puts year
end

puts

for index in (0..years.length - 1)
  puts years[index]
end

puts

puts years[0]
puts years[1]
puts years[2]
puts years[3]
