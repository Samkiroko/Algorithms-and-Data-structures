# 


def sliding_maximum(k, array)
  i = 0
  arr = []
  while i <= array.length - k 
    arr.push(array[i..i + (k-1)].max)
    i += 1
  end
  arr
end

def new_sliding_maximum(k, array)
  arr = []
  max = arr[0..0 + (k - 1)].max
  arr.push(max)
  i = k 
  while i <= array.length 
    max = array[i] if array[i]> max 
    arr.push(max)
    i += 1
  end
  arr
end