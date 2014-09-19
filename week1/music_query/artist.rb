class Artist
	def	read_card
		front = get_line
		back  = get_line

		Card.new({front: front, back: back})
	end
end

