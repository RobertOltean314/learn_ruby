def add(first_param, second_param)
  first_param + second_param
end

def subtract(first_param, second_param)
  first_param - second_param
end

def sum(numbers)
  numbers.inject(0, :+) # short form for { |sum, numbers| --> parameters; sum += numbers -> the lambda operation}
end

def multiply(numbers)
  numbers.inject(1, :*)
end

def power(base, power)
  base**power
end

def factorial(n)
  if n == 0
    1
  elsif n == 1
    1
  else
    n * factorial(n-1)
  end
end

