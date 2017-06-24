# Grandma can only hear you when you shout your question. And she won't let you go unless you shout "BYE!" three times in a row.

bye_counter = 0

puts "Hi, dear. Ask me anything."

while true
  question = gets.chomp
  if question == question.upcase
    if question == "BYE!"
      bye_counter += 1
      if bye_counter == 3
        puts "Bye, dear!"
        break
      else
        puts "You are sweet, dear! Lets chat some more."
      end
    else
      bye_counter = 0
      puts "NOT SINCE 1938!"
    end
  else
    bye_counter = 0
    puts "I couldn't quite hear what you said, dear. Go again."
  end
end
