require_relative('lib/piece')
require_relative('lib/rook')
require_relative('lib/bishop')
require_relative('lib/queen')
require_relative('lib/the_knight')
require_relative('lib/the_king')
require_relative('lib/white_pawn')
require_relative('lib/black_pawn')
require_relative('lib/chess_board')

# Rook Tests
white_rook = Rook.new(1, 1)
puts "Good Rook Moves"
puts white_rook.can_move?(1, 5)
puts white_rook.can_move?(5, 1)
puts "Bad Rook Moves"
puts white_rook.can_move?(5, 3)

# Bishop Tests
white_bishop = Bishop.new(2,1)
puts "Good Bishop Moves"
puts white_bishop.can_move?(5, 4)
puts white_bishop.can_move?(4, 3)
puts white_bishop.can_move?(4, 4)
puts white_bishop.can_move?(6, 4)

# Queen Tests
white_queen = Queen.new(4, 1)
puts "Good Queen Moves"
puts white_queen.can_move?(6, 3)
puts white_queen.can_move?(4, 5)
puts white_queen.can_move?(5, 3)
puts white_queen.can_move?(3, 3)

# the_knight Tests
white_the_knight = TheKnight.new(4, 4)
puts "Good Knight Moves"
puts white_the_knight.can_move?(2, 5)
puts white_the_knight.can_move?(2, 3)
puts white_the_knight.can_move?(5, 2)
puts white_the_knight.can_move?(5, 6)

#the_king Test
white_king = TheKing.new(3, 2)
puts "Good King Moves"
puts white_king.can_move?(3, 1)
puts white_king.can_move?(4, 1)
puts white_king.can_move?(8, 8)

#white_pawn Test
white_pawn = WhitePawn.new(3, 2)
puts "Good Pawn Moves"
puts white_pawn.can_move?(3, 3)
puts white_pawn.can_move?(3, 4)
puts white_pawn.can_move?(2, 5)

#black_pawn Test

black_pawn = BlackPawn.new(4, 7)
puts "Bad Pawn Moves\n"
puts black_pawn.can_move?(4, 6)
puts black_pawn.can_move?(4, 5)
puts black_pawn.can_move?(4, 4)

game = ChessBoard.new

