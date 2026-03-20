def measure(num = 1, &block)
  # &block -> transforms the block into an object so we can pass it like one
  start = Time.now
  num.times { block.call } # we could do this because we took the block as an object
  passed = Time.now - start
  passed.to_f / num
end