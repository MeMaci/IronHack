class ChessBoard
	attr_accessor :board

	def initialize

		@board = [
					[],
					[Rook.new(1, 1), TheKnight.new(2, 1), Bishop.new(3, 1), Queen.new(4, 1), TheKing.new(5, 1), Bishop.new(6, 1), TheKnight.new(7, 1), Rook.new(8, 1)],
					[BlackPawn.new(1,2), BlackPawn.new(2,2), BlackPawn.new(3,2), BlackPawn.new(4, 2), BlackPawn.new(5, 2), BlackPawn.new(6, 2), BlackPawn.new(7, 2), BlackPawn.new(8, 2)],
					[],
					[],
					[],
					[],
					[Bishop.new(7, 1), Bishop.new(7, 2), Bishop.new(7, 3), Bishop.new(7, 4), Bishop.new(7, 5), Bishop.new(7, 6), Bishop.new(7, 7), Bishop.new(7, 8)],
					[Rook.new(8, 1), TheKnight.new(8, 2), WhitePawn.new(8, 3), Queen.new(8, 4), TheKing.new(8, 5), WhitePawn.new(8, 6), TheKnight.new(8, 7), Rook.new(8,8)]
				]
			@board.each do | row | 
				row.each do | piece | 
					print "| #{piece.class} |"
				end
				print "\n"
			end			
	end

	def valid_move?(s_x, s_y, e_x, e_y)
		piece = @board[s_y][s_x]
		if piece == nil
			
		elsif condition
		elsif condition
		else		
	end
	
end