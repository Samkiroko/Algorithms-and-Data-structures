def move(starting, goal)
  pegs = [1, 2, 3]
  
  i = 0
  # middle = nil

  while i < pegs.length
    if pegs[i] != starting && pegs[i] != goal
      middle = pegs[i]
    end

    i += 1
  end
  empty = ([1, 2, 3] - [starting, goal]).first
  result = "#{starting}->#{empty}" + " "
  result += "#{starting}->#{goal}" + " "
  result+= "#{empty}->#{goal}"
  result
end

puts move(1, 3)
# => 1->2 1->3 2->3

puts move(2, 3)
# => 2->1 2->3 1->3
