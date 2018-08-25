
def test
    a = [1, 2]
    b = 'cat'
    a.each {|b| c = b * a[1]}
    puts(a)
    puts(b)
    puts(defined?(c))
end
test()