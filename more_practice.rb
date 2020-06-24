# 

def find_pairs(array, k)
  # write your code here
  i = 0
  arr = []

  while i < array.length
    j = i + 1

    while j < array.length
      arr.push([array[i], array[j]]) if array[i] + array[j] == k

      j += 1
    end

    i += 1
  end

  arr
end

p find_pairs([1, 9, 11, 13, 2, 3, 7], 12)
# => [[1, 11], [9, 3]]



# another solution
def find_pairs(array, k)
  # write your code here
  pairs = []
  
  array.each_with_index do |x, index|
    array[(index + 1)..-1].each do |y|
      pairs.push([x, y]) if x + y == k
    end
  end
  
  pairs
end

p find_pairs([1, 9, 11, 13, 2, 3, 7], 12)
# => [[1, 11], [9, 3]]