class Pair
	def initialize(key, value)
		@key = key
		@value = value
	end

	attr_reader :key 
	attr_accessor :value   			#DOES BOTH ATTR_READER & ATTR_WRITER 

	#attr_reader :value
	#attr_writer :value 			#same as    def value=(new_value)
											#	@value = new_value
											#end
end