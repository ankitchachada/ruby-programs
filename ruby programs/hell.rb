class Hello
  def initialize(name)
    @name = name
  end
 
  def hello
    puts "Hello #{@name}!"
  end
end
 
g = Hello.new("world")
 

g.hello
