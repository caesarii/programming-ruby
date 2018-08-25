
class Array
    def find
        for i in 0...size
            value = self[i]
            if yield(value)   
                puts(value)
            end
        end
        return nil
    end
end

x = [1, 3, 5, 7, 9].find {|v| v * v > 30}
