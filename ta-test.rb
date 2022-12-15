
def spin_words(string)

  # Split the initial string in words and store them in a variable.
  initial_words = string.split(' ')
  
  # Initiate an array for the words that will be spun
  new_words = []

  # Iterate through the words in the initial string's words' array
  initial_words.each do |word|
    if word.length >= 5
      # If the word has 5 or more characteres, the word is split into its characteres.
      # After that, those are shuffled and joined together in a spun word.
      spun_word = word.split('').shuffle.join
      # Then, that new spun word is appended to the new-words array we initiated in the start of the function.
      new_words << spun_word
    else
      # If the word has less than 5 characteres, it is appended to the array without being spun.
      new_words << word
    end
  end

  # Ruby always returns the result of the last command.
  # Here, we use "join" to get all of the elements in the new_words array together in a string.
  # By adding (' ') to join, we make it so that the string will have a space in between the array's elements.
  new_words.join(' ')
end
