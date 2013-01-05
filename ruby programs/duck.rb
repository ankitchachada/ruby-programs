 class ADuck
    def quack()
        puts "quack A";
    end
end

class BDuck
    def quack()
        puts "quack B";
    end
end


def quack_it(duck)
    duck.quack
end

b = BDuck.new
quack_it(ADuck.new)
quack_it(b)
