words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = { }

# "is an anagram of" is an equivalence relation
# as a representative for each equivalence class,
# below we use the "sorted version" of each word

words.each do |word|
  key = word.downcase.split("").sort.join
  if result.has_key?(key)
    result[key] << word
  else
    result[key] = [word]
  end
end

result.each_value do |value|
  p value
end
