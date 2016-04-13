#Program to reverse the sentences
#Input: 
#Enter any number
#2
#Enter the 2 sentences
#Hello World
#Hi There
#Output:
#World Hello
#there Hi

class ReverseSentences
  def reverse
    puts "Enter any number"
    a = gets.chomp
    a = a.to_i
    if a <= 0
      puts "Please enter number greater than 0"
      reverse
    else
      puts "Enter the #{a} sentences"
      b = []
      a.times do |i|
        b << gets.chomp
      end
      puts "Output:"
      b.each do |i|
        puts i.split().reverse.join(" ")
      end  
    end
  end
end

r = ReverseSentences.new
r.reverse
