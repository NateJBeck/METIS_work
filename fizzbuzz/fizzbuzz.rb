class Fizzbuzz
	def run
		(1..100).each do |number|
			if number % 3 == 0 && number % 5 == 0
				puts "Fizzbuzz"
			elsif number % 3 == 0
				puts "Fizz"
			elsif number % 5 == 0
				puts "Buzz"
			else
				puts number
			end
		end
	end
end

fizzbuzz = Fizzbuzz.new
fizzbuzz.run

#using RANGES
#(1..100). each will write an array of nums 1-100, then iterating through array

#(1..100) creates instance of range class === same thing as range = Range.new(1,100)
