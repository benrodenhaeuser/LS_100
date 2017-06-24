# The user will enter one word after another.
# We store all the words he enters, except when he enters the empty word
# In the latter case, we read back to the user all the words he entered before, sorted alphabetically

puts "Enter word"

words = []
words_string = ""

while true
  word = gets.chomp

  if word == ""
    words.each do |word|
      words_string << word + " " # why does each have access to words_string? => closure
    end
    puts words_string
    break
  else
    words.push(word)
  end

end
