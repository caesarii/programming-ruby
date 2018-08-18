class Control
    def initialize()
        puts('初始化')
    end
    def defaultMethod
        puts('default is public')
    end
    public def publicMethod
        puts('public method')
        protectedMethod()
        privateMethod()
    end
    protected def protectedMethod
        puts('protected mehod')
    end
    private def privateMethod
        puts('private method')
    end
end

c1 = Control.new()
c1.defaultMethod()
c1.publicMethod()
c1.protectedMethod()
c1.privateMethod()
