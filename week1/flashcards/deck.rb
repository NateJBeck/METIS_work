class Deck
	attr_reader :name

	def initialize(name_and_cards)
		@name = name_and_cards[:name]
		@cards = name_and_cards[:cards]
	end

	def play
		@cards.each do |card|
			card.play
		end
	end

end



#swedish_cards = []
#swedish_cards << ({front: "Dog", back: "Cat"})
#decks << ({ name: "Swedish", cards: swedish_cards})
