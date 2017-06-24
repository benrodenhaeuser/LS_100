# recursively sort an array of strings

# main idea: this sorting method works much like you would sort a hand of (unsorted) cards that you have been dealt.
# you pick each card (this is "words.each ...|word| ..." below), and insert it at the right place in the cards you have already sorted ("... insert (word, sorted)" below). 

# sort non-empty array of words
def sort( words )
  sorted = []
  words.each { |word| sorted = insert( word, sorted ) }
  return sorted
end

# inserts word in words to the left of the first element of words which is dictionary-smaller than word.
# we are not assuming here that words is sorted.
# but when we call insert from inside sort, the latter WILL be the case.
def insert( word, words )
  if words == [] # if words is empty ...
    return [ word ] # ... return array solely containing word
  else # else ...
    if word.downcase < words.first.downcase # ... if word is dictionary-larger than first element of words ...
      return [ word ] + words # ... concatenate [word] and words
    else # else ...
      return [ words.first ] + insert( word, words.drop(1) ) # ... concatenate words.first and word inserted in rest of words
    end
  end
end


# test
puts sort( [ "orange", "apple" ] )
puts ""
puts sort( [ "Zack", "Eli", "Peter", "Alicia" ] )
puts ""
puts sort( [ "zack", "Eli", "Peter", "alicia" ] )
