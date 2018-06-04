module KnightTravails
  class Node
    attr_accessor :parent, :value
    
    def initialize(value = nil, parent = nil)
      @value = value
      @parent = parent
    end
  end
end