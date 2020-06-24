def majority_element(nums)
   len=nums.length
   maj_index=0
   count=1
   for i in 1...len
       if nums[i]==nums[maj_index]
           count+=1
       else
           count-=1
       end
       if count==0
           nums[maj_index]=nums[i]
           count=1
       end
   end
    candidate=nums[maj_index]
    count=0
   for i in 0...len
    if nums[i]==candidate
        count+=1
    end
   end
 
   if count > (len/2)
     return candidate
   else
       return -1
   end
end