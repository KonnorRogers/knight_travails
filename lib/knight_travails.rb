require "knight_travails/version"
require 'knight_travails/node'
require 'knight_travails/board'
require 'knight_travails/knight'
module KnightTravails
  # Your code goes here...
end

test = KnightTravails::Knight.new
test.knight_move([3, 3], [7, 7])
test.knight_move([0, 0], [3, 2])