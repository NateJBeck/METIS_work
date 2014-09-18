class MultipleSum
	def initialize
		@numbers = (1..1000)
		@numbers_divisible_by_3_or_5 = []
		@sum = 0	
	end

	def play
		get_numbers_div_by_3_or_5_into_array
		add_the_numbers_together
		puts @sum

	end

	def get_numbers_div_by_3_or_5_into_array
		@numbers.each do |num|
			if num % 3 == 0 || num % 5 == 0
				@numbers_divisible_by_3_or_5 << num
			end	
		end
		@numbers_divisible_by_3_or_5.pop
	end

	def add_the_numbers_together
		@numbers_divisible_by_3_or_5.each do |num|
			@sum += num
		end
	end

end

number = MultipleSum.new
number.play