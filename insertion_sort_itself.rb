# Insertion Sort Itself
# In Insertion Sort Part 1, you sorted one element in the array. Using the same approach repeatedly, can you sort an entire unsorted array?

# Output
# In this challenge print the array every time an element is “inserted” into the array in (what is currently) its correct place (even if it doesn't move). Begin printing from the second element and on.

# Challenge
# Can you print the steps of Insertion Sort?

# Example
# sort_itself([1, 4, 3, 6, 9, 2])
# # => 1 4 3 6 9 2
# #    1 3 4 6 9 2
# #    1 3 4 6 9 2
# #    1 3 4 6 9 2
# #    1 2 3 4 6 9


# Get stuck and need some hint?

def sort_itself(array)
  i = 1

  while i < array.length
    j = 0

    while j < i
      if array[i] < array[j]
        temp = array.delete_at(i)
        array.insert(j, temp)
      end
      j += 1
    end
    puts array.join(' ')
    i += 1
  end
end

sort_itself([1, 4, 3, 6, 9, 2])
# => 1 4 3 6 9 2
#    1 3 4 6 9 2
#    1 3 4 6 9 2
#    1 3 4 6 9 2
#    1 2 3 4 6 9