
# each
l = [1, 3, 5, 7, 9]
l.each { |i| puts(i)}

# collect
l2 = ["h", "a", "l"]
l2.collect { |x| puts(x.succ)}

# do end
f = File.open("testfile")
f.each do |line|
    puts(line)
end
f.close()

# inject
# inject 接受一个参数作为初始值, 如果没有初始值将以数组第一个元素作为初始值, 从第二元素开始迭代
l = [1, 3, 5, 7]
sum = l.inject(0) {|sum, element| sum + element}
puts(sum)
# 等价于
sum = l.inject{|sum, element| sum + element}
puts(sum)

