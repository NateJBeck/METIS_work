require './deck'			#requires local file "deck"
require './card'			#requires local file "card"

class FlashcardGame 				#everything is in a CLASS
	def initialize(decks)
		@decks = decks
	end

	def play
		loop do 
			list_out_decks

			deck = ask_user_which_deck 				#ask_user will return either a deck or a nil

			if deck 								#if the deck was found
													#also, if the deck was NOT nil
				puts "This will play #{deck.name}"
				deck.play
			else									#anything but exact match will exit program
				puts "----> Exiting Program"
				break
			end
		end
	end

	private

	def list_out_decks
		@decks.each do |deck|			#.each goes through every data within array
			puts deck.name 				#.name is available because of the attr_reader :name in DECK.RB
		end
	end

	def ask_user_which_deck
		print "Which deck would you like? >>  "
		requested_deck_name = gets.chomp 							#gets a requested deck as string
		@decks.find {|deck| deck.name == requested_deck_name}		#.find goes through each data in array and returns FIRST match
																	#of the object
																	#|deck| is part of array passed in, has a name
																	#if it matches requested name, it returns the MATCH
	end

end

#STARTUP SCRIPT -- 	creates game, configures deck and a new game outside of the CLASS GAME
					#also creates a bunch of cards to put into deck as ARRAY
decks = []

spanish_cards = []
spanish_cards << Card.new({ front: "Gato", back: "Cat"})	#adds instances of class CARD within array spanish_cards
spanish_cards << Card.new({ front: "Perro", back: "Dog"})
decks << Deck.new({ name: "Spanish", cards: spanish_cards})	#hands new instance of class DECK with name and cards pointing to info

japanese_cards = []
japanese_cards << Card.new({ front: "Neko", back: "Cat"})
japanese_cards << Card.new({ front: "Inu", back: "Dog"})
decks << Deck.new({ name: "Japanese", cards: japanese_cards})

flashcard_game = FlashcardGame.new(decks)
flashcard_game.play