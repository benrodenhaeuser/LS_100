hash = { Bob: "terrific", Ingrid: "great" }
puts hash.select { |key,value| key == :Bob }
