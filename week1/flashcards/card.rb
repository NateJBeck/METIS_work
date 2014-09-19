class Card
	def initialize(front_and_back)
		@front = front_and_back[:front]
		@back  = front_and_back[:back]
	end

	def play
		ask_user_to_translate
		user_translation = get_user_translation

		tell_them_right_or_wrong(user_translation)		
	end

	def ask_user_to_translate
		print "TRANSLATE: #{@front} >> "
	end

	def get_user_translation
		input = gets.chomp.downcase
	end

	def tell_them_right_or_wrong(user_translation)
		if is_their_answer_right?(user_translation)
			puts "Correct!"
		else
			puts "NOPE"
		end
	end

	def is_their_answer_right?(answer)
		answer == @back.downcase
	end
end






#NOTES ON HASHES

#array is a way to represent a collection of things
#hashes area  way to represent a concept of pairs
	#know one piece of info, use it to get another piece of info
#[] array
#{hash}		have a key and a value		=> MAPS TO
	# {"Gabe"=>"B-W",		uses Gabe to find last name B-W
	# "Chris"=>"Toomey",
	# "Ben"=>"Masi"
	# }

#keep keys conceptually equivalent, same with values
#search for values using key     hash[key]    --->    value
#position doesn't matter in a hash

#symbols are written like   :symbol  and exist ONLY in hashes
#   :gabe   label that refers to itself
#  {:gabe => 26} is equivalent to {gabe: 26}    
# 	search for hash[:symbol]
