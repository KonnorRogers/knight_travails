module KnightTravails
  class Knight
    def initialize
      @board = Board.new.board
      @root = nil
      @created_nodes = []
      @possible_moves = possible_moves
    end

    def knight_move(start, stop)
      result = bfs(start, stop)
      count = 0
      path = ''
      result.each do |move|
        path += "#{move}\n"
        count += 1
      end

      puts "You made it in #{count} moves! Heres your path:"
      puts start.to_s
      puts path.to_s
    end

    private

    def bfs(start, stop)
      queue = []
      node = Node.new(start, nil)
      queue << node

      until queue.empty?
        return path(node) if node.value == stop
        children = children(node)
        children.each do |child|
          queue << child
        end

        node = queue.shift
      end
    end

    def children(node)
      result = []
      next_coords = next_coords(node.value)
      next_coords.each do |coord|
        result << Node.new(coord, node)
      end
      result
    end

    # Returns up the parent node until it reaches the root
    def path(node)
      path = []
      until node.parent.nil?
        path.unshift node.value
        node = node.parent
      end

      path
    end

    def next_coords(coord)
      result = []
      @possible_moves.each do |move|
        # IE: coord = [0, 0] move = [2, 1] new_coord = [2, 1]
        new_coord = [coord[0] + move[0], coord[1] + move[1]]

        # Stops the coords from being off the board
        unless new_coord.any? { |x| x > @board.size - 1 || x < 0 }
          result << new_coord
        end
      end
      result
    end

    # Define possible movements
    def possible_moves
      [
        [2, 1], [2, -1], [1, 2], [-1, 2],
        [-1, -2], [-2, 1], [-2, -1], [1, -2]
      ]
    end
  end
end
