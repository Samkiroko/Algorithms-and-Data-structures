# Merge Sort I
# Like QuickSort, MergeSort runs quickly in O(n log n) time. While Mergesort uses more space and is not usually as fast (in practice) as Quicksort, Mergesort has the benefit of being stable, which means it keeps duplicate elements in the original order that they started with. This is meaningless if the values being sorted is all there is, but usually there's associated data with each element which sometimes needs to be preserved in the original order. For example, if you sort by one value of an item, and then by another value, you may not want the second sort to mess up the order of the first sort.

# Stable Sort Example

# Sort a deck of card so the suits are in order and each suit is in number-order.

# Answer:
# 0 - Start with an unsorted deck
# 1 - Sort the entire deck by number
# 2 - Use a stable sort and sort by suit. Since the sort is stable, the number order is preserved. See each step below:

# Merge Method

# The main part of MergeSort involves the merge method, which merges 2 sorted arrays to create one sorted array. This can be done in one pass through the arrays, by comparing the values of the two arrays before placing a value in the large array.

# Challenge

# You are given two sorted arrays. Can you merge the them and return one sorted array? This should be done with only one run through the array.

# Example
# p merge_sort([1, 3, 9, 11], [2, 4, 6, 8])
# # => [1, 2, 3, 4, 6, 8, 9, 11]

def merge_sort(array1, array2)
  # third array to store the merged elements
  result = []
  # index for the first array
  i = 0
  # index for the second array
  j = 0
  # iterate until one of them is completely traversed
  while i < array1.length && j < array2.length
    # if the first array holds the smaller element in its current index,
    # store it in the result array then increment the index of the first array
    if array1[i] <= array2[j]
      result << array1[i]
      i += 1
    # otherwise, store the element from the second array in the result array,
    # then increment the index of the second array
    else
      result << array2[j]
      j += 1
    end
  end
  # after the loop above, one of the arrays is completely traversed but the other is not
  # this means that elements remain
  
  # append all remaining elements from the first array to the result array, if they exist
  while i < array1.length
    result << array1[i]
    i += 1
  end

  # append all remaining elements from the second array to the result array, if they exist
  while j < array2.length
    result << array2[j]
    j += 1
  end
  result
end


p merge_sort([1, 3, 9, 11], [2, 4, 6, 8])
# => [1, 2, 3, 4, 6, 8, 9, 11]