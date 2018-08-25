def fib_up_to(max)
    i1 = 1
    i2 = 1
    while i1 <= max
        yield i1
        temp = i1
        i1 = i2
        i2 = temp + i2
    end
end

fib_up_to(1000) { |f| print f, " "}