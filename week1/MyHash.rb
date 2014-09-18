require './pair'

class MyHash
	def initialize
		@pairs = [Pair.new("Gabe", 26)]
		# could also have set @pairs = [] and then << new Pair instance
	end

	def [](key)				#name: open/close bracket
		found_pair = find_pair_with_key(key)

		if found_pair
			found_pair.value
		end					#there is an implied ELSE NIL

	end

	def []=(key, new_value)		#open/closed bracket equals
		found_pair = find_pair_with_key(key)
		found_pair.value = new_value		#takes advantage of pair.rb attr_accessor :value
	end

	private    #methods available only within the class

	def find_pair_with_key(key)				#finds @pairs with KEY
		@pairs.find do |pair| 		#between do and end is block
			pair.key == key 		#retuns the PAIR, not just pair.key
		end
		#same as @pairs.find do {|pair| pair.key ==}
	end

end

my_hash = MyHash.new 				#new and initialize are conncected

puts my_hash["Gabe"]
my_hash["Gabe"] = "Unclear"
puts my_hash["Gabe"]