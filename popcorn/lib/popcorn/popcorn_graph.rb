require 'popcorn/node'
require 'popcorn/link'
module PopcornGraph
  NODES = [
      nil,
      Node.new("O"),#1
      Node.new("P"),#2
      Node.new("P"),#3
      Node.new("R"),#4
      Node.new("O"),#5
      Node.new("C"),#6
      Node.new("N"),#7
      Node.new("C") #8
  ]


  GRAPH = [
    Link.new(NODES[1], NODES[3]), #1
    Link.new(NODES[1], NODES[4]), #2
    Link.new(NODES[1], NODES[5]), #3
    Link.new(NODES[1], NODES[2]), #4
    Link.new(NODES[2], NODES[5]), #5
    Link.new(NODES[2], NODES[6]), #6
    Link.new(NODES[3], NODES[4]), #7
    Link.new(NODES[4], NODES[5]), #8
    Link.new(NODES[5], NODES[6]), #9
    Link.new(NODES[3], NODES[7]), #10
    Link.new(NODES[4], NODES[7]), #11
    Link.new(NODES[5], NODES[7]), #12
    Link.new(NODES[5], NODES[8]), #13
    Link.new(NODES[6], NODES[8]), #14
    Link.new(NODES[7], NODES[8])  #15
  ]
end