class Oldest_and_Youngest
	def initialize
		@names = []
		@ages = []

		@oldest_age = 0
		@oldest_person = ""

		@youngest_age = 1000
		@youngest_person = ""

	end

	def play
		puts "Enter names/ages (Jim 55) and exit with a BLANK LINE"
		
		loop do
			print "> "
			name_and_age = gets.chomp

			if name_and_age != ""
			   split_the_input_into_name_and_age(name_and_age)
	
			elsif name_and_age == ""
				break
			end
		end

		find_the_oldest_and_the_youngest
		print_the_oldest_and_the_youngest

	end

	def split_the_input_into_name_and_age(name_and_age)
	 	user_input_split_up = name_and_age.split(' ')

	 	@names << user_input_split_up[0]
	 	@ages << user_input_split_up[1].to_i
	end

	def find_the_oldest_and_the_youngest
		0.upto(@names.count-1) do |num|
			if @ages[num] > @oldest_age
				@oldest_age = @ages[num]
				@oldest_person = @names[num].to_s
 			end

 			if @ages[num] < @youngest_age
 				@youngest_age = @ages[num]
 				@youngest_person = @names[num]
 			end
		end
	end

	def print_the_oldest_and_the_youngest
		puts "Oldest Person: #{@oldest_person}, at #{@oldest_age}"
		puts "Youngest Person: #{@youngest_person}, at #{@youngest_age}"
	end


end


old_and_young = Oldest_and_Youngest.new
old_and_young.play