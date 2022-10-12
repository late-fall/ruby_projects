class TicTacToe
    attr_accessor :player1, :player2

    def initialize ()
        @board = [0,1,2,3,4,5,6,7,8,9]
        @result = "continue"
    end

    def printname()
        p @player1
        p @player2
    end

    def askname()
        print "Enter player 1's name: "
        @player1 = gets.chomp
        print "Enter player 2's name: "
        @player2 = gets.chomp
    end

    def printboard()
        puts "\n| #{@board[1]} | #{@board[2]} | #{@board[3]} |"
        puts "_____________"
        puts "| #{@board[4]} | #{@board[5]} | #{@board[6]} |"
        puts "_____________"
        puts "| #{@board[7]} | #{@board[8]} | #{@board[9]} |"
        puts "\n"
    end

    def play_p1()
        print "Player 1's turn (O). Enter a number(1-9): "
        pos = gets.chomp.to_i
        while !(@board[pos].is_a?(Integer) && pos >= 1 && pos <= 9)
            print "Not a valid input. Enter a number(1-9): "
            pos = gets.chomp.to_i
        end
        @board[pos] = "O"
        self.printboard()
        self.check_game()
    end

    def play_p2()
        print "Player 2's turn (X). Enter a number(1-9): "
        pos = gets.chomp.to_i
        while !(@board[pos].is_a?(Integer) && pos >= 1 && pos <= 9)
            print "Not a valid input. Enter a number(1-9): "
            pos = gets.chomp.to_i
        end
        @board[pos] = "X"
        self.printboard()
        self.check_game()
    end

    def check_game()
        if !@board.include?(0 || 1 || 2 || 3 || 4 || 5 || 6 || 7 || 8 || 9)
            @result = "tie"
        elsif (@board[1] == 'O' && @board[2] == 'O' && @board[3] == 'O') || \
            (@board[4] == 'O' && @board[5] == 'O' && @board[6] == 'O') || \
            (@board[7] == 'O' && @board[8] == 'O' && @board[9] == 'O') || \
            (@board[1] == 'O' && @board[4] == 'O' && @board[7] == 'O') || \
            (@board[2] == 'O' && @board[5] == 'O' && @board[8] == 'O') || \
            (@board[3] == 'O' && @board[6] == 'O' && @board[9] == 'O') || \
            (@board[1] == 'O' && @board[5] == 'O' && @board[9] == 'O') || \
            (@board[3] == 'O' && @board[5] == 'O' && @board[7] == 'O')
            @result = "Player 1 has won the game!"

        elsif (@board[1] == 'X' && @board[2] == 'X' && @board[3] == 'X') || \
            (@board[4] == 'X' && @board[5] == 'X' && @board[6] == 'X') || \
            (@board[7] == 'X' && @board[8] == 'X' && @board[9] == 'X') || \
            (@board[1] == 'X' && @board[4] == 'X' && @board[7] == 'X') || \
            (@board[2] == 'X' && @board[5] == 'X' && @board[8] == 'X') || \
            (@board[3] == 'X' && @board[6] == 'X' && @board[9] == 'X') || \
            (@board[1] == 'X' && @board[5] == 'X' && @board[9] == 'X') || \
            (@board[3] == 'X' && @board[5] == 'X' && @board[7] == 'X')
            @result = "Player 2 has won the game!"
        end
    end

    def play_game()
        self.printboard()
        while @result == "continue"
            self.play_p1()
            self.play_p2()
        end
        p @result
    end

end

game1 = TicTacToe.new
game1.play_game
