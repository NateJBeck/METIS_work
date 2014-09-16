class Round
	MAX_GUESSES = 2						#give numbers meaningful variable names

	def initialize						#initialize is run when do .NEW for class instance
		@answer = rand(1..10)			#@  INSTANCE VARIABLE is available to other METHODS in the CLASS
		@number_of_guesses = 0
		@total_wins = 0
	end

	attr_reader :number_of_guesses, :total_wins		#is like a method that returns an instance variable
													#gives public access to number_of_guesses
  	def play
    	puts "--- NEW ROUND ---"

    	MAX_GUESSES.times do
    		puts "The answer is #{@answer}"
    		print "Enter a number >> "
    		guess = gets.chomp.to_i
    		@number_of_guesses += 1

    		if correct?(guess)
      			tell_user_they_are_correct
      			@total_wins += 1
      			break
    		else
      			tell_user_they_are_incorrect
    		end

  			puts "Answer is #{@answer}; guess was #{guess}"
  		end
  	end

    private			#unaccessible outside of the INSTANCE of the class
					#have more private methods than public
  	def correct?(guess)
    	guess==@answer
  	end

  	def tell_user_they_are_correct
    	puts "Correct!!!!!!!!!!!!!!!!!!!!"
  	end

  	def tell_user_they_are_incorrect
    	puts "You are wrong."
  	end

end
