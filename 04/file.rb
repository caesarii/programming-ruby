class File
    # 该方法负责文件的打开和关闭, 处理通过 block 实现
    def File.open_and_process(*args)
        # 普通调用返回文件对象
        result = file = File.new(*args)
        # block 调用则传递到 block
        if block_given?()
            result = yield file
            file.close
        end
        return result
    end
end

File.open_and_process('testfile', 'r') do |file|
    while line = file.gets
        puts line
    end
end

file = File.open_and_process('testfile', 'r')
puts(file)

