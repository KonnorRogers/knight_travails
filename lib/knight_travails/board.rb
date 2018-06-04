module KnightTravails
  class Board
    attr_accessor :board
    
    def initialize(size = 8)
      @board = create_board(size)
    end
  
    def create_board(size)
      Array.new(size) { Array.new(size, Node.new) }
    end
  end
end