family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

# We want an array containing the brothers and sisters (= the immediate family)

# first pass

immediate_family = []

family.select do |key,value|
  if key == :brothers || key == :sisters
    immediate_family = immediate_family + value
  end
end

p immediate_family

# the above works, but it is not how select is supposed to be used!
# the above would be better with each, but select is supposed to work like a filter
# (actually, like filter in JavaScript)
# better way (from the Launchschool solution):

immediate_family_2 = family.select do |key, value|
  key == :sisters || key == :brothers
end

immediate_family_2 = immediate_family_2.values.flatten

p immediate_family_2
