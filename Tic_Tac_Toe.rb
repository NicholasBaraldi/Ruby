class Board

    HEIGHT = 3
    WIDTH = HEIGHT

    attr_accessor :grid

    def initialize
        @grid = Array.new(HEIGHT) {Array.new(WIDTH, :" ")}
    end

    def print_grid
        @grid.each do |row|
            puts
            row.each do |cell|
                print "[#{cell}]"
            end
        end
        puts
    end

    def row_win?(marker)
        @grid.any? do |row|
            row.all? do |cell|
                cell == marker
            end
        end
    end

    def column_win?(marker)
        (0...WIDTH).any? do |column|
            @grid.all? do |row|
                row[column] == marker
            end
        end
    end

    def diagonal_win?(marker)
        [-1, 1].any? do |sign|
            (0...HEIGHT).all? do |i|
                second_index = 
                    if sign > 0
                        i
                    else
                        sign * (i+1)
                    end
                @grid[i] [second_index] == marker
            end
        end
    end
end

b = Board.new

b.grid[2][2] = :x
b.grid[1][1] = :x
b.grid[0][0] = :x
b.print_grid
puts b.diagonal_win?(:x)