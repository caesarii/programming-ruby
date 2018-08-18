class Logger
    # 将 new 方法标记为私有, 阻止通过 new 创建新对象
    private_class_method :new
    # 保存单例
    @@logger = nil
    def Logger.create
        # ?
        @@logger = new unless @@logger
        return @@logger
    end
end

instance1 = Logger.create()
instance2 = Logger.create()
puts(instance1)
puts(instance2)