class Book
  # attr_reader :name -> this acts as a getter
  # attr_accessor :name -> this acts as a getter + setter
  # attr_writer :name -> this acts as a setter
  def title
    @title
  end

  # def title(title)
  #   @title = title.split.map(&:capitalize).join(' ')
  # end

  def title=(title)
    # title=(title) -> setter method
    # copied from ex 3 -> same logic goes for capitalizing titles
    little_words = %w[and or a an of in on at to from over the] # %w[] -> array of strings
    words = title.downcase.split

    capitalized = words.map.with_index do |word, index|
      if little_words.include?(word) && index != 0
        word
      else
        word.capitalize
      end
    end

    @title = capitalized.join(" ")

  end

  def initialize(title = "")
    # this is called using Book.new
    self.title = title
  end
end