class File
    # 该方法负责文件的打开和关闭, 处理通过 block 实现
    def File.open_and_process(*args)
        f = File.open(*args)
        yield f
        f.close()
    end
end

File.open_and_process('testfile', 'r') do |file|
    while line = file.gets
        puts line
    end
end

