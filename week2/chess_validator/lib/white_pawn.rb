class WhitePawn <Piece

	def can_move?(ending_x, ending_y)
		difference_x =@starting_x - ending_x
		difference_y =@starting_y - ending_y

		# This is FALSE_POSITIVE not exactly what we need to return!!
		# if (difference_x == 0 && difference_y == -1) || 
		# 	(@starting_y == 2 && ending_y == (@starting_y+2) )
		# 	true
		# else 
		# 	false
		# end
	
		if 	(@starting_y == 2 && difference_x ==0) &&
			(difference_y == -1 || difference_y == -2)
			true
		elsif (@starting_y != 2 && difference_x ==0) && (difference_y == -1)
			true
		else
			false
		end	
		
	end
	
end