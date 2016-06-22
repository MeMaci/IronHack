# require_relative("lib/board")

# my_board = Board.new
# my_board.show_board
# my_board.add_character([1,2], "X")
# puts "Hey I added a character"
# my_board.show_board
# my_board.add_character([2,2], "0")
# puts "Hey I added a character"
# my_board.show_board
# my_board.add_character([0,2], "")
# puts "Hey I added a character"
# my_board.show_board

require_relative('lib/board')
require_relative('lib/game')

my_board = Board.new

puts "Choose a space from the board bellow\n
       
    y |x(0  |  1  |  2)
    _ |----------------
      |
    0 | 0,0 | 0,1 | 0,2   
      |
      |----------------
      |
    1 | 1,0 | 1,1 | 1,2 
      |
      |----------------
      |
    2 | 2,0 | 2,1 | 2,2 
      |
    - |----------------"

game_new = Game.new(my_board)
game_new.take_turns


