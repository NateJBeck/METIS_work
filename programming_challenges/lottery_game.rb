class Lottery
	def initialize
		@names = []
	end

	def play
		puts "Enter a list of names, and then a BLANK LINE to find a lottery winner!"
		loop do
			name = gets.chomp
			if name != ""
			   @names << name
			elsif name == ""
				break
			end
		end

		print_names_and_the_winner
		puts
		pick_a_winner
	end

	def print_names_and_the_winner
		puts "Contestants:"
		@names.each {|name| puts " > #{name}"}
	end

	def pick_a_winner
		winner = @names.sample
		puts "---#{winner} is the winner!---"
	end
	
end

lottery = Lottery.new
lottery.play
