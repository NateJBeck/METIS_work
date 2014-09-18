class Pair
	def initialize(key, value)
		@key = key
		@value = value
	end

	attr_reader :key 				#user cannot change the KEY, not how pairs work
	attr_accessor :value   			#DOES BOTH ATTR_READER & ATTR_WRITER 

	#attr_reader :value
	#attr_writer :value 			#same as    def value=(new_value)
											#	@value = new_value
											#end
end



#HASH DETAILS

# symbol is a thing that points to itself
# ages = {:gabe => 26}			=> hash-rocket
# ages["gabe"]  gives   NIL  (no hash with string GABE)
# ages[:gabe]   gives   26		calls the [](key) method to find the pair with given key
# ages = { gabe: 26}		shorthand sets the symbol gabe to point to 26
# ages[:gabe] 	gives 	26	
