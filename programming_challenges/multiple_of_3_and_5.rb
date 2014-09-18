class MultipleSum
	def initialize
		@numbers = (1..10)
		@numbers_divisible_by_3_or_5 = []	
	end

	def play
		put_numbers_div_by_3_or_5_into_array
		puts @numbers_divisible_by_3_or_5

		sum = METHOD SUMMING EVERYTHING

		print sum
		print_sum_of_the_numbers_in_array

		#go through all the numbers
		#find numbers div by 3
		#put into numbers_divisible_by_3_or_5
	end

	def put_numbers_div_by_3_or_5_into_array
		@numbers.each do |num|
			if num % 3 == 0 || num % 5 == 0
				@numbers_divisible_by_3_or_5 << num
			end	
		end
		@numbers_divisible_by_3_or_5.pop
	end

	def print_sum_of_the_numbers_in_array
	end

end

number = MultipleSum.new
number.play