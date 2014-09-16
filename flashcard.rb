class Deck
	attr_reader :name

	def initialize(name)
		@name = name
	end
end


class FlashcardGame
	def initialize(decks)
		@decks = decks
	end

	def play
		loop do 
			list_out_decks

			user_selects_this_deck = ask_user_which_deck

			if user_selects_this_deck == ""
				puts "----> Exiting Program"
				break
			else
				puts "This will play"
			end
		end
	end

	private

	def list_out_decks
		@decks.each do |deck|
			puts deck.name
		end
	end

	def ask_user_which_deck
		print "Which deck would you like? >>  "
		deck = gets.chomp
		deck
	end

end

#STARTUP SCRIPT -- creates game, configures outside of the CLASS

decks = []

decks << Deck.new("Spanish") 
decks << Deck.new("Japanese")

flashcard_game = FlashcardGame.new(decks)
flashcard_game.play