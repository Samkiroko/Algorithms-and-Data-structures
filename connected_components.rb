# Connected Components
# Are all the components connected on the given Graph?

# A graph is considered one connected component if every node is connected along a path with every other node.

# The following graph is not one connected component, since the 1 and 4 cannot be reached from the 0,2,3 and 5.

# Challenge
# Given a graph, return true if the graph is one connected component, and false otherwise.
# By using a search algorithm (BFS/DFS), you can traverse through the entire graph and save visited nodes. If you visited all nodes listed in the original graph, it means that all of them are connected.

# Example
# graph = {
#   0 => [2], 
#   1 => [4], 
#   2 => [0, 5, 3], 
#   3 => [5, 2], 
#   4 => [5, 1], 
#   5 => [4, 2, 3]
# }

# puts connected_graph?(graph)
# # => true

def connected_graph?(graph)
  arr = [0]
  queue = [0]

  while arr.length < graph.keys.length
    break unless queue[0]

    graph[queue[0]].each do |el|
      queue.push(el) unless arr.include? el
      arr.push(el) unless arr.include? el
    end

    queue.shift
  end

  arr.length == graph.keys.length
end

puts connected_graph?({
  0 => [2], 
  1 => [4], 
  2 => [0, 5, 3], 
  3 => [5, 2], 
  4 => [5, 1], 
  5 => [4, 2, 3]
})
# => true

puts connected_graph?({
  0 => [1, 2], 
  1 => [0, 2], 
  2 => [0, 1, 3, 4, 5], 
  3 => [2, 4], 
  4 => [3, 2], 
  5 => [2]
})
# => true

# another solution
def depth_first_search(graph)
  # write your code here
  result = []
  stack = [0]
  visited = []
  
  while stack.size != 0
    head = stack.pop
    result << head
    visited << head
    
    not_visited = graph[head].reject { |node| visited.include? node }
    
    visited += not_visited
    stack += not_visited.reverse
  end
  
  result
end

def connected_graph?(graph)
  # write your code here
  graph.keys.size == depth_first_search(graph).size
end

puts connected_graph?({
  0 => [2], 
  1 => [4], 
  2 => [0, 5, 3], 
  3 => [5, 2], 
  4 => [5, 1], 
  5 => [4, 2, 3]
})
# => true

puts connected_graph?({
  0 => [1, 2], 
  1 => [0, 2], 
  2 => [0, 1, 3, 4, 5], 
  3 => [2, 4], 
  4 => [3, 2], 
  5 => [2]
})
# => true