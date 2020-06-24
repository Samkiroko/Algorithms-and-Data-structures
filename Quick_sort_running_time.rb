# Quick Sort Running Time
# The running time of Quicksort will depend on how balanced the partitions are. If you are unlucky enough to always select the greatest or smallest element as the pivot, then each partition will only separate one element at a time, so the running time will be similar to InsertionSort. 

# However, Quicksort will usually pick a pivot that is mid-range, and it will partition the array into two parts. Let's assume Partition is lucky and it always picks the median element as the pivot. What will be the running time in such a case? 

# Running Time of Recursive Methods
# Quicksort is a recursive method so we will need to use a technique to calculate the total running time of all the method calls. We can use a version of the "Recursion Tree Method" to estimate the running time for a given array of N elements.

# In real sorting, Quicksort won't always pick the exact middle element. But as long as it's not regularly picking really poorly, it will have a similar running time. To make sure it works well on most input, real-world Quicksort implementations don't pick the same index for pivot each time, but use some other technique instead, such as picking a random element. There are other techniques used to improve Quicksort.

# Notice that n*log n is much much faster than the O(n^2) running time of Insertion Sort. For example, on an array of 1 million elements, n^2 = 10^12, while n*log n is approx. 20 million, a much more manageable number. 

# Challenge 
# How much faster is Quicksort than Insertion Sort in practice? Compare the running time of the two algorithms by counting how many swaps or shifts each one takes to sort an array, and output the difference. You can modify your previous sorting code to keep track of the swaps. 

# Output Format 
# Return a number D, where D = (insertion sort shifts) - (quicksort swaps)

# Explanation 
# Insertion Sort will take 9 "shifts" to sort the array. Quicksort will take 8 "swaps" to sort it, as shown in the diagram below. 9-8 = 1, the output.

# Challenge
# Compare the number of shifts Insertion Sort and Quicksort take, and return the difference.

# Example
# puts quicksort_running_time([1, 3, 9, 8, 2, 7, 5])
# # => 1

# insertion sort
def insertion_sort(array)
  for i in 1...(array.length)
    current = array[i]
    j = i - 1
    while j >= 0 && current < array[j]
      array[j + 1] = array[j]
      # increment the counter after the swap
      $insertion_sort_counter += 1
      j -= 1
    end
    array[j + 1] = current
  end
end

# quick sort
def advanced_quicksort(array, begin_index = 0, end_index = array.length - 1)
  if begin_index < end_index
    pivot = partition(array, begin_index, end_index)
    advanced_quicksort(array, begin_index, pivot - 1)
    advanced_quicksort(array, pivot + 1, end_index)
  end
end

def partition(array, begin_index, end_index)
  pivot = array[end_index]
  j = begin_index
  for i in begin_index...end_index
    if array[i] < pivot
      array[i], array[j] = array[j], array[i]
      # increment the counter after the swap
      $quick_sort_counter += 1
      j += 1
    end
  end
  # increment the counter after the swap
  array[end_index], array[j] = array[j], array[end_index]
  $quick_sort_counter += 1
  j
end

def quicksort_running_time(array)
  # define globals here to reset their values at each test case
  $quick_sort_counter = 0
  $insertion_sort_counter = 0
  # call an insertion sort for the clone array
  insertion_sort(array.clone)
  # call a quick sort for the clone array
  advanced_quicksort(array.clone)

  $insertion_sort_counter - $quick_sort_counter
end


puts quicksort_running_time([1, 3, 9, 8, 2, 7, 5])
# => 1
