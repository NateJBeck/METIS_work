class Pair
	def initialize(key, value)
		@key = key
		@value = value
	end

	attr_reader :key, :value

	def value=(new_value)
		@value = new_value
	end
end

pair = Pair.new("Nate", 25)

pair.value = 28

puts pair.key
puts pair.value