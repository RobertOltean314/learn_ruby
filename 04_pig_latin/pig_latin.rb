def translate(phrase)
  # apple - > starts with vowel -> apple + ay = appleay
  # banana -> starts with consonant -> banana -> move 'b' at the end = ananab -> + ay = ananabay
  # qu -> is considered an edge case
  vowels = %w{a e i o u}

  # for each char in word
  # while word[0] != vowels
  # word[:-1] = word[0]
  # end while
  # word + ay

  phrase.split(" ").map do |word|
    is_capitalized = word[0] == word[0].upcase # if the words starts with a capitalized letter, keep it, otherwise it should start with a lower letter

    word = word.downcase

    until vowels.include?(word[0]) # if word[0] is not in vowel it's a consonant
      if word[0] == "q" && vowels.include?(word[1])
        word = word[2..] + "qu" # add both letters at the end
      else
        word = word[1..] + word[0]
      end
    end
    result = word + "ay"
    is_capitalized ? result.capitalize : result
  end.join(" ") # looping for each word and apply the algorithm for each word
end
