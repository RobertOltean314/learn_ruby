VOWELS = %w{a e i o u}

def translate(phrase)
  phrase.split(" ").map do |word|
    translate_word(word)
  end.join(" ")
end

def translate_word(word)
  is_capitalized = word[0] == word[0].upcase
  word = word.downcase

  until VOWELS.include?(word[0])
    if word[0] == "q" && VOWELS.include?(word[1])
      word = word[2..] + "qu"
    else
      word = word[1..] + word[0]
    end
  end
  result = word + "ay"
  is_capitalized ? result.capitalize : result
end

