class Temperature
  # instance methods -> def nume_methoda end
  # class method -> self.nume_methoda
  def initialize(value = {})
    @fahrenheit = value[:f]
    @celsius = value[:c]
  end

  def self.ftoc(fahrenheit)
    (fahrenheit - 32) * 5.0 / 9.0
  end

  def self.ctof(celsius)
    celsius * 9.0 / 5.0 + 32
  end

  # class method
  def self.from_celsius(celsius)
    Temperature.new(c: celsius)
  end

  def self.from_fahrenheit(fahrenheit)
    Temperature.new(f: fahrenheit)
  end

  def in_fahrenheit
    if @fahrenheit
      @fahrenheit
    else
      Temperature.ctof(@celsius)
    end
  end

  def in_celsius
    if @celsius
      @celsius
    else
      Temperature.ftoc(@fahrenheit)
    end
  end

end