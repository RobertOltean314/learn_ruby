class Dictionary
  attr_reader :entries

  def initialize(entries = {})
    @entries = entries
  end

  def add(entry)
    if entry.is_a?(Hash)
      @entries.merge!(entry)
    else
      @entries[entry] = nil
    end
  end

  def keywords()
    @entries.keys.sort
  end

  def include?(key)
    @entries.include?(key)
  end

  def find(term)
    @entries.select { |key, value| key.include?(term) }.sort_by { |key, value| key }.to_h
  end

  def printable
    @entries.sort_by { |key, value| key }.map { |key, value| "[#{key}] \"#{value}\"" }.join("\n")
  end
end