require "./round.rb"      #finds file (. means same directory)

class GuessingGame      #camel case for CLASS, start with CAP
  NUMBER_OF_ROUNDS = 3    #constants are in ALL CAPS
  
  def initialize          #prepare the instance of CLASS xyz 
                          #called when making NEW class
    @guess_total = 0.0    #@ is an INSTANCE VARIABLE
                          #@ access it from within the instance
    @total_wins = 0       #snake case is default this_is_snake_case
  end

  def play
    puts "Its guessing time"
    
    NUMBER_OF_ROUNDS.times do
      round = Round.new           #round is an instance of class Round
      round.play                  #call play method for instance round
                                  #try to 'hide' as much code as possible
      puts "You made #{round.number_of_guesses} guesses."     #{interpolation}

      @guess_total += round.number_of_guesses
      @total_wins  += round.total_wins
    end

    puts
    puts "---ANALYSIS---"
    puts "You made an average #{average_guesses} guesses per round."   # average_guesses method returns averages
    puts "You made #{@total_wins} CORRECT ANSWERS"

  end

  def average_guesses
    @guess_total / NUMBER_OF_ROUNDS
  end

end

guessing_game = GuessingGame.new        #this code is acted upon, above is read first
guessing_game.play