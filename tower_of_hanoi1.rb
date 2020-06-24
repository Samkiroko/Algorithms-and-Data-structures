# Challenge
# In this challenge, you need to move 2 disks from any starting peg to any goal peg.
 
# You will be given two numbers (from 1 to 3) as input - the starting  peg, and the goal peg. Write a function that calculates how to move 2  disks from the starting peg to the goal peg. Return a string with all the steps.


# Output Format:

# Add the peg to move from, an arrow "->", and the peg to move to.  For example, to move from peg 1 to peg 3, print "1->3". 


# Examples

# move(1, 3)
# # => 1->2 1->3 2->3

# move(2, 3)
# # => 2->1 2->3 1->3






def move(starting, goal)
  pegs = [1, 2, 3]
  
  i = 0
  middle = nil

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


# another solution 

def move(starting, goal)
  # your code here
  intermediate = (1..3).find { |n| n != starting && n != goal }
	"#{starting}->#{intermediate} #{starting}->#{goal} #{intermediate}->#{goal}"
end

puts move(1, 3)
# => 1->2 1->3 2->3

puts move(2, 3)
# => 2->1 2->3 1->3
