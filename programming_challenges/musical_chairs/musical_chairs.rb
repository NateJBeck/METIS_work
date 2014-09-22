class MusicalChairs
  def initalize(file_to_read, file_to_write)
    @file_to_read = file_to_read
    @file_to_write = file_to_write
  end

  def play
    while there are lines to read
      read the data from the input file
      #split data into number of kids / chairs
      #

  end  

  def read all the data in the file
    File.open(@file_to_read, "r")
      save_row = file.gets.chomp
      
  end
end

musical_chairs = MusicalChairs.new
musical_chairs.play

