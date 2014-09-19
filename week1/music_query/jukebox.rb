require './music_database'

class JukeBox
	def initialize (database)
		@database = database
		puts @database
	end

	def query
		print "Artist name >> "
		artist_name = gets.chomp

		puts "**************"
		puts "#{artist_name}"
		puts "**************"

		puts @database[artist_name]

		#@database[artist_name]

	end

end

music_database = MusicDatabase.new
database = music_database.read_database("music.csv")

jukebox = JukeBox.new(database)
jukebox.query