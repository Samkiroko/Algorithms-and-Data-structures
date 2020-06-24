# A Tree in an Array
# To store a Binary Tree in an Array, we just need to determine the order  that we store the Nodes in. A good order is "breadth-first" where we  store the items in order top-down and left-to-right of the tree.

# Here's a tree represented as an array:

# And this is the tree 'unfolded':

# Notice that 5 only has one child Node, so the other child is represented as 0 in the above array. This is OK as long as we don't need to store  actual 0 values.

# Challenge

# The input for this challenge will provide an array of numbers in the above "breadth-first" format, and use 0's for non-nodes. 
# Can you print out the sum of the Leftmost side of the Tree?

# Tip: A number located at position i in an array will have it's left child located at the position 2i+1 in the array. 

# Test case example:

# leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9])
# # => 11

# Go down the left-hand side of the tree to get the sum: 2+7+2 = 11. You can take a look at the
# image of the tree above.



def leftmost_nodes_sum(array)
  sum = array[0]
  indx = 0
  while indx < array.length - 1
    puts indx = (2 * indx) + 1
    sum += array[indx] if indx < array.length
  end
  sum
end

puts leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9])
# => 11

# Another solution 
def leftmost_nodes_sum(array)
  # your code here
  i = 0
  sum = 0
  exp = 2 ** i - 1
  
  while exp < array.size
    sum += array[exp]
    i = i + 1

    exp = 2 ** i - 1
  end
  
  sum
end

puts leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9])
# => 11