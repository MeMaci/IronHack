class Bishop < Piece
	def can_move?(ending_x, ending_y)
		difference_x = @starting_x - ending_x
		difference_y = @starting_y - ending_y

		if difference_x == difference_y
			true
		else
			false
		end
	end
end