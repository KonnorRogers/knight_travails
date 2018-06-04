module KnightTravails
  class Knight
    def initialize
      @board = Board.new.board
      @root = nil
      @created_nodes = []
      @knight_moves = [
        [2, 1], [2, -1], [1, 2], [-1, 2],
        [-1, -2], [-2, 1], [-2, -1], [1, -2]
      ]
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
      puts "#{start}"
      puts "#{path}"
    end
    
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
      @knight_moves.each do |move|
        new_coord = [coord[0] + move[0], coord[1] + move[1]]
        unless new_coord.any? { |x| x > @board.size - 1 || x < 0 }
          result << new_coord
        end
      end
      result
    end
  end
end