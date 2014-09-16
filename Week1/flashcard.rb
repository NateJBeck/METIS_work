class FlashcardGame
	def play
		loop do 
			deck = ask_user_which_deck
			if deck == ""
				puts "----> Exiting Program"
				break
			else
				puts "This will play"
			end
		end
	end

	private

	def ask_user_which_deck
		print "Which deck would you like? >>  "
		deck = gets.chomp
		deck
	end

end

flashcard_game = FlashcardGame.new
flashcard_game.play