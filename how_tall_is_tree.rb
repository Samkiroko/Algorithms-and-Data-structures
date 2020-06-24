# How Tall is the Tree?
# Can you find the height of a Binary Tree? The height is the number of Nodes from the Root to the lowest Leaf. The Tree does not need to be balanced.

# For example, in the tree below, the height is 4:


# Challenge
# Return the height of the Tree.

# Example

# array_tree = [2, 7, 5, 2, 6, 0, 9]

# puts binary_tree_height(array_tree)
# => 3


def binary_tree_height(array_tree)
  # write your code here
  result_left = 1
  result_right = 1

  i = 0
  while i < array_tree.length
    result_left += 1 if array_tree[2 * i + 1]
    i = 2 * i + 1
  end

  j = 0
  while j < array_tree.length
    result_right += 1 if array_tree[2 * j + 2]
    j = 2 * j + 2
  end

  [result_left, result_right].max
end

# another solution
class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

def array_to_tree(array, i)
  return nil if i >= array.length || array[i] == 0

  node = Node.new(array[i])
  node.left = array_to_tree(array, 2*i+1)
  node.right = array_to_tree(array, 2*i+2)

  node
end

def binary_tree_height(array_tree)
  # write your code here
  tree = array_to_tree(array_tree, 0)
  
  recursive_tree_height(tree)
end

def recursive_tree_height(tree)
  return 0 if tree.nil?
  return 1 if tree.left == nil && tree.right == nil
  
  [recursive_tree_height(tree.left), recursive_tree_height(tree.right)].max + 1
end

puts binary_tree_height([2, 7, 5, 2, 6, 0, 9])
# => 3