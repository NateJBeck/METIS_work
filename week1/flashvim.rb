require '.deck'
class FlashcardGame
  def initialize
    @decks = decks
  end

  def play
    loop do
      list_out_decks
      deck = ask_user_which_deck
      if deck
        puts "this will play #{deck.name}"
      else
        puts "exiting"
        break
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
    print "Which deck would you like? >>"
    requested_deck_name = gets.chomp
    @decks.find {|deck| deck.name == requested_deck_name}
  end 
end

decks = []
decks << Deck.new
flashgame = FlashcardGame.new
flashgame.play

