require_relative('board')

class Game
	def initialize(board)
		@board    = board
		@Player_1 = gets.chomp
		@Player_2 = gets.chomp
		@coutner  = 0 
	end

	def current_player
    	turn_1 = " "
    	turn_2 = " "
    	current_player     = " "
        if @coutner.odd?
        	current_player = @Player_1
        else 
            current_player = @Player_2
        end
    end

    def take_turns
       	puts "#{current_player} your turn"
        user_input = gets.chomp
        @board.add_character(user_input.split(","), current_player)
        @board.show_board
            if @board.winner?
            	puts "You are the WINNER"
            elsif @coutner >= 8
            	puts "BOARD CRASHED"
            else
            	@coutner += 1
            	take_turns
            end
    end
end    