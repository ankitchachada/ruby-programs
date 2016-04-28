#find number of anagrams
def factorial(n)
 if n <= 1
   1
 else
   n*factorial(n-1)
 end
end
puts "Enter a word.."
a = gets.chomp

h = Hash.new(0)
a.chars.each do |i|
 h[i] += 1
end

b = h.values.inject {|mem,i| mem*factorial(i)}

ans = factorial(a.length)/b
puts "There would #{ans} anagrams of #{a}"

