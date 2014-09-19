class Locker
	#NUMBER OF LOCKERS = 100

	def initialize
		@lockers = (1..100)
		@students = Range.new(1, 100) #ALSO (1, NUMBER_OF_LOCKERS)
		@OPEN_OR_CLOSED = []
		@OPEN_OR_CLOSED = 101.times.map {"CLOSED"}   #THIS SETS ALL ELEMENTS AS "CLOSED"
	end

	def run
		#set_all_lockers_to_closed		#replaced by the 101.times.map

		@students.each do |student_number|			#MAIN LOOP
			loop_through_all_lockers_with_students(student_number)
		end   

		print_all_the_lockers
	end
	
	private

	def set_all_lockers_to_closed				#just use the .times.map to set array as something
		@lockers.each do |locker_number|
			puts "EVERY locker_number #{locker_number}"
			@OPEN_OR_CLOSED[locker_number] = "CLOSED"
		end
	end

	def loop_through_all_lockers_with_students(student_number)
		@lockers.each do |locker_number|
			if locker_number % student_number == 0
				toggle_the_locker_state(locker_number)
			end
		end
	end

	def toggle_the_locker_state(locker_number)
		if  @OPEN_OR_CLOSED[locker_number] == "CLOSED"
			@OPEN_OR_CLOSED[locker_number] = "OPEN"
		elsif @OPEN_OR_CLOSED[locker_number] == "OPEN"
			  @OPEN_OR_CLOSED[locker_number] = "CLOSED"
		end	
	end

	def print_all_the_lockers
		@lockers.each do |locker_number|
			puts " #{locker_number} #{@OPEN_OR_CLOSED[locker_number]}"
		end
	end
end

locker = Locker.new
locker.run