# Full Merge Sort
# You just merged two arrays together into one sorted array. Can you now use your merge method to completely sort an unsorted array?

# Algorithm
# If you just had 2 sorted arrays, you could merge them to solve the problem. You have 2 unsorted halves instead, but Recursion can let you treat them as if they've been sorted. Recursively call mergesort on each half and then merge the results together.

# Challenge
# In this challenge you need to print the data that accompanies each integer in a list. In addition, if two strings have the same integers, you need to print the strings in their original order. This means your sorting algorithm will need to be stable, i.e. that the original order is maintained for equal elements.

# Details

# You will be given a list that contains both integers and strings. Can you print the strings in order of their accompanying integers? If the integers for two strings are equal, make sure to print them in the order they appeared in the original list.

# Input Format

# array, each position containing an integer x, and a string, s.

# Output Format 

# Return an Array with the strings in their correct order. 

# Challenge

# Print the characters according to the order of their accompanying integers.