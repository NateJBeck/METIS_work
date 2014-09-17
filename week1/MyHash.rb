require './pair'

class MyHash
	def initialize
		@pairs = [Pair.new("Gabe", 26)]
	end

	def [](key)
		found_pair = @pairs.find do |pair| 
			pair.key == key
		end

		found_pair.value

	end
end

my_hash = MyHash.new
puts my_hash["Gabe"]