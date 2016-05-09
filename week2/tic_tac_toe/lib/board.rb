class Board
	def initialize
		#Spots 0,0 0,1 0,2  1,0 1,1 1,2  2,0 2,1 2,2
		@board = [
							["","",""], 
							["","",""],
							["","",""]

						]
	end

	def show_board
		board_container = ""
		@board.each do |row|
			#row = [ "", "", "X"]
			row.each do |cell|
				if cell.empty?
					board_container += "___"
				else 
					board_container += "_#{cell}_"
				end
			end
			# Create a new line after each row
			board_container +="\n"
		end
		# Print the board
		puts board_container
	end

	def add_character(location, marker)
		x = location[1] #2
		y = location[2] #1

		@board[y][x] = marker
	end
end