def measure(num = 1)
  start = Time.now
  num.times { yield }
  passed = Time.now - start
  passed.to_f / num
end