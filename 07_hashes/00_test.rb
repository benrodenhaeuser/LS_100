hash = { Bob: "terrific", Ingrid: "great" }
p hash.select { |key,value| key == :Bob } # => { :Bob => "terrific" }
