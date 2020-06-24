# frozen_string_literal: true

def majority_element(nums)
  len = nums.length
  maj_index = 0
  count = 1
  (1...len).each do |i|
    if nums[i] == nums[maj_index]
      count += 1
    else
      count -= 1
    end
    if count == 0
      nums[maj_index] = nums[i]
      count = 1
    end
  end
  candidate = nums[maj_index]
  count = 0
  (0...len).each do |i|
    count += 1 if nums[i] == candidate
  end

  if count > (len / 2)
    candidate
  else
    -1
  end
end
