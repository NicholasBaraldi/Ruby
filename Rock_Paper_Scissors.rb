class Player
    MOVES = [:rock, :paper, :scissors]

    attr_reader :score, :move

    def initialize
        @score = 0
        @move = nil
    end

    def get_move
        loop do
            puts "Pick a move."
            print "> "
            @move = gets.chomp.strip.downcase.to_sym
            if @move == :quit
                return false
            elsif MOVES.include?(@move)
                return @move
            else
                puts "Invalid move."
            end
        end
    end

    def win
        @score += 1
    end
end

class PC_Player < Player

    def get_move
        @move = MOVES.sample
    end

end

class Game

    WIN_SCENARIOS = [
    [:rock, :scissors],
    [:paper, :rock],
    [:scissors, :paper]
]

    def initialize
        @tie = 0
        @p1 = Player.new
        @p2 = PC_Player.new
        play
    end

    def winner
        if @p1.move == @p2.move
            puts "It's a tie!"
            @tie += 1
        elsif WIN_SCENARIOS.include?([@p1.move, @p2.move])
            puts "You win!"
            @p1.win
        else
            puts "PC wins!"
            @p2.win
        end
    end

    def round
        return false unless @p1.get_move
        return false unless @p2.get_move
        result
        puts
        scores
        puts
        puts "Let's play again."
        true
    end

    def play
        loop do
            break unless round
        end
        puts
        puts "Goodbye!"
    end

    def result
        puts
        puts "You played #{@p1.move} and PC played #{@p2.move}."
        winner
    end

    def scores
        puts "Scores:"
        puts "Player: #{@p1.score}"
        puts "PC: #{@p2.score}"
        puts "Ties: #{@tie}"
    end
end

Game.new