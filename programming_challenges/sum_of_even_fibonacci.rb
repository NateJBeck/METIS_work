class Fibonacci
	def initialize(number)
		@max_number = number
		
		@fibonacci_sequence = []
		@even_fibonacci_values = []
	end

	def play
		make_fibonacci_sequence_less_than_number
		make_array_of_even_fibonacci
		get_total_of_all_even_values_and_print_it
	end

	def make_fibonacci_sequence_less_than_number
		first = 1
		second = 1
		total = 1

		1000.times do |num|

			if num <= 1
				total = first + num
			else
				total = first + second
			end

			second = first
			first = total

			if total >= @max_number
				break
			end			
			
			@fibonacci_sequence << total

		end
	end

	def make_array_of_even_fibonacci
		  @fibonacci_sequence.each do |value|
			if value % 2 == 0
				@even_fibonacci_values << value
			end
		end
	end

	def get_total_of_all_even_values_and_print_it
		sum = 0

		@even_fibonacci_values.each do |value|
			sum += value	
		end

		puts "Total of all even fibonacci values less than #{@max_number}: #{sum}"
	end

end

fibonacci = Fibonacci.new(50000000000)
fibonacci.play