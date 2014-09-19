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

#round = Round.new    	is class Round 				*cannot use .PLAY
#round.play   			is instance of class Round *cannot use .new

#STARTUP SCRIPT -- 	creates game, configures deck and a new game outside of the CLASS GAME
					#also creates a bunch of cards to put into deck as ARRAY

				#.each_with_index    gives two things   LINE   INDEX
				#file.each_with_index { |line, index| puts "#{index} #{line}""
