require './flashcard'
require './deck_reader'

decks = DeckReader.new("decks.txt")     				#1)
flashcard_game = FlashcardGame.new(decks.get_decks)		#2)
flashcard_game.play									#3)

#1) makes a new instance of DeckReader class, passing DeckReader the TXT file
	#assigns "decks" to receive array of decks from DeckReader
#2) creates new instance of FlashcardGame
	#passes FlashcardGame the decks (.get_decks) from the TXT file
#3) plays the game


#ALL OF FOLLOWING IS DELETED FROM FLASHCARD
#decks = []

#spanish_cards = []
#spanish_cards << Card.new({ front: "Gato", back: "Cat"})	#adds instances of class CARD within array spanish_cards
#spanish_cards << Card.new({ front: "Perro", back: "Dog"})
#decks << Deck.new({ name: "Spanish", cards: spanish_cards})	#hands new instance of class DECK with name and cards pointing to info

#flashcard_game = FlashcardGame.new(decks)       creates new variable of Class Flashcard
#flashcard_game.play                          	 does .play method on new instance of Flashcard