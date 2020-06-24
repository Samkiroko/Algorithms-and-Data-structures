# Binary Search Tree
# The Binary Search Tree is a a Binary Tree which stores keys in a sorted manner. Every node's key is smaller than all the key's in the node's left subtree and greater than all the key's in the nodes right subtree. Here's an example:


# Inserting Elements in the Tree
# Insertion and Search can usually be done very quickly in a binary Tree. The smallest and largest elements in the tree are easy to find. It's simple to go from one element to the next in the tree and to through the entire Tree in order.


# Challenge
# You will be given an array of numbers as input. Insert the numbers (in order) one-at-a-time into a binary search tree. Then return a string with the tree in pre-order (You can use the pre-order function that you wrote in the previous lesson).

# binary_search_tree([8, 3, 10, 1, 6, 14, 4, 7, 13])
# # => "8 3 1 6 4 7 10 14 13"

class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
  end

class BST
  def insert(node, head = @root)
    # in case the tree has no root
    if @root.nil?
      @root = node
      return
      end
    # in case there is an empty place
    return node if head.nil?

    head.left = insert(node, head.left) if node.data < head.data
    head.right = insert(node, head.right) if node.data > head.data
    head
  end

  def pre_order(node = @root)
    # implementation from the previous challenge
    return '' if node.nil?

    result = "#{node.data} "
    result += pre_order(node.left)
    result += pre_order(node.right)
  end
end

def binary_search_tree(array)
  tree = BST.new
  array.each { |e| tree.insert(Node.new(e)) }
  tree.pre_order
end

puts binary_search_tree([8, 3, 10, 1, 6, 14, 4, 7, 13])
# => "8 3 1 6 4 7 10 14 13"