# Quick-Sort Advanced

# The previous version of Quicksort was easy to understand, but it was not optimal. It required copying the numbers into other arrays, which takes up more space and time. To make things faster, one can create an "in-place" version of Quicksort, where the numbers are all sorted within the array itself. 

# Challenge 

# Create an in-place version of Quicksort. This time, always select the last element in the 'sub-array' as a pivot. Partition the left side and then the right side of the array. Print out the whole array at the end of every partitioning method. 

# Guideline 

# Instead of copying the array into multiple sub-arrays, use indices to keep track of the different sub-arrays. You can pass the indices to a modified partition method. The partition method should partition the sub-array and then return the index location where the pivot gets placed, so you can then call partition on each side of the pivot. 

# Since you cannot just create new sub-arrays for the elements, Partition will need to use another trick to keep track of which elements are greater and which are smaller than the pivot.

# The In-place Trick

# If an element is smaller than the Pivot, you should swap it with a (larger) element on the left-side of the sub-array. Large elements can just remain where they are, and the pivot can then be inserted in the middle at the end of the partition method. To ensure that you don't swap a small element with another small element, use an index to keep track of the "small" elements.

# Explanation of Sample I/O 
# The 5 is initially selected as the pivot, and the array is partitioned as shown in the diagram. The left side is partitioned next, with the 2 as the pivot. Finally the right side is partitioned, with the 8 as the pivot. The entire array is now sorted.

# Challenge
# Create an in-place QuickSort and print the entire array on a new line at the end of every partitioning method

# Example
# advanced_quicksort([1, 3, 9, 8, 2, 7, 5])
# # => 1 3 2 5 9 7 8
# #    1 2 3 5 9 7 8
# #    1 2 3 5 7 8 9





def partition(array, begin_index, end_index)
  # take the last element as the pivot
  pivot = array[end_index]
  # use another index for holding the greater value
  # use the first element as the initial greater value
  j = begin_index
  for i in begin_index...end_index
    if array[i] < pivot
      # swap the current element with the memorized greater element
      array[i], array[j] = array[j], array[i]
      # increment the greater index
      j += 1
    end
  end
  # the current placement will be [smaller elements, greater elements, pivot]
  # then you need to swap the pivot with the last element of the greater group
  array[end_index], array[j] = array[j], array[end_index]
  # return the index of the pivot
  j
end

def advanced_quicksort(array, begin_index = 0, end_index = array.length - 1)
  # divide the problem until there's a sub-array between the begin and end indices
  if begin_index < end_index
    # partition the array
    pivot = partition(array, begin_index, end_index)
    # print the resulting array after each partition
    puts "#{array}"
    # solve the sub-problem that includes the elements smaller than the pivot
    advanced_quicksort(array, begin_index, pivot - 1)
    advanced_quicksort(array, pivot + 1, end_index)
  end
end


