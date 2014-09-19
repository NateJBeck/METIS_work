require "CSV"

class Database
	def initialize
		@all_info = {}
		@artists = []
		@songs = []

		@artists_and_songs = []
	end

	def create_database
		read_artist_name
		puts @artists_and_songs
	end

	def read_artist_name
		CSV.foreach("music.csv", {headers: true}) do |row|	
			artist_name = row["Artist"]
			song_name = row["Name"]

			@all_info = {artist_name => @songs}

			@all_info[artist_name] << song_name

			@artists_and_songs << @all_info

			#MAKE ARTIST NAME AS KEY 
			#SEARCH THROUGH HASH AND PUSH SONGS INTO ARTIST => SONG ARR



#			@artists << artist_name
#			@songs << song_name
#			@all_info = {artist_name => @songs}
#			@all_info[artist_name] << song_name
#			@artists_and_songs << @all_info

		end

	end
end

database = Database.new
database.create_database




#class Database(file_name)
#	def initialize
#		CSV.foreach(file_name, {headers: true}) do |row|
#		row["Artist"]
#		end
#	end

#end

#database = Database.new("music.csv")


#set variable to a csv file
#use CSV.foreach(PATH, {headers: = true}) do |row|
#	input comes in as a hash - keys are the headers
#creates database


#in different class, generate UI, query database   "JukeBox"

