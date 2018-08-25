
def n_times(thing)
    return lambda { |n| thing * n}
end

p1 = n_times(23)
result1 = p1.call(3)
result2 = p1.call(4)
puts(result1)
puts(result2)