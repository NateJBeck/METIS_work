class Fibonacci
	def initialize(highest)
		@highest = highest
		@all_numbers = []
		@fibonacci_values = []

		@highest-1.times do |num|
			@all_numbers << num
		end

	end

	def play
		fibonaccify_the_numbers
	end

	def fibonaccify_the_numbers
		@.times.map do |num|
			@fibonacci_values << (@all_numbers[num] + @all_numbers[num+1])			
		end
	end
end

fibonacci = Fibonacci.new(40)
fibonacci.play


#.map collects output
#3.times.map {  }