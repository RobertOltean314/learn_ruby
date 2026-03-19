def echo(msg)
  msg
end

def shout(msg)
  msg.upcase!
end

def repeat(msg, times = 2)
  ([msg] * times).join(" ")
end

def start_of_word(word, characters = 1)
  word[0..characters - 1]
end

def first_word(words)
  # should return everything until the first " "
  word = ""
  words.each_char do |char|
    break if char == " "
    word += char
  end
  word
end

def titleize(phrase)
  little_words = %w[and or a an of in on at to from over the] # %w[] -> array of strings
  words = phrase.downcase.split

  capitalized = words.map.with_index do |word, index|
    # we're taking the index because the first word should always to capitalized
    if little_words.include?(word) && index != 0
      word
    else
      word.capitalize
    end
  end

  capitalized.join(" ")
end