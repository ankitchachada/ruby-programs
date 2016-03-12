def fizzbuzz
	arr = (1..100).to_a
	arr.each do |i|
		if (i%15).zero?
			p "FizzBuzz"
		elsif (i%3).zero?
			p "Fizz"
		elsif (i%5).zero?
			p "Buzz"
		else
			p i
		end
	end
end

fizzbuzz