class BubbleSort
  #Bubble sort method
  def self.bubble_sort(a)  
    for i in 0...a.length  
	    for j in 0..(a.length - i - 2)  
	      if a[j + 1] < a[j]  
		     a[j], a[j + 1] = a[j + 1], a[j]
	      end
	    end  
	  end
    puts "Sorted List:"
    p a.map { |e| e }
  end
end

puts "Enter no of terms in series:"
num = gets.chomp.to_i
arr = []
#enter list
puts "Enter #{num} numbers:"
for i in 0...num
  x = gets.chomp.to_i
  arr << x
end

#display list
puts "Initial List:"
p arr.map { |e| e  }

  

#Sorted list
BubbleSort.bubble_sort(arr)

