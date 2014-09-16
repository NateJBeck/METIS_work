class FlashcardGame
  def play
    loop do
      deck = ask_user_which_deck
      if deck == ""
        puts "EXITING"
        break
      else
       puts "this will play"
      end
    end
  end

  private
  
  def ask_user_which_deck
    print "Which deck would you like? >>"
    deck = gets.chomp
    deck
  end 
end

flashgame = FlashcardGame.new
flashgame.play

