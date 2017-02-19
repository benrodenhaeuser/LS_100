# match checks whether the regex can be found in word. If so, it returns the word. Else, it returns nil
def match(word,regex)
  true if word.downcase =~ regex
end

words = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]
matches = [ ]
words.each { |word| matches << word if match(word, /lab/) }
p matches
