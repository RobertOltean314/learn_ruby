# frozen_string_literal: true

module TextHelpers
  LITTLE_WORDS = %w[and or a an of in on at to from over the].freeze
end

class Book # rubocop:disable Style/Documentation
  attr_reader :title

  def title=(title)
    words = title.downcase.split

    capitalized = words.map.with_index do |word, index|
      if TextHelpers::LITTLE_WORDS.include?(word) && index != 0
        word
      else
        word.capitalize
      end
    end

    @title = capitalized.join(' ')
  end

  def initialize(title = '')
    self.title = title
  end
end
