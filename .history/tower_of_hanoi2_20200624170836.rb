# Challenge

# Create a program that solves the tower of Hanoi. You will be given one number as input - the number of disks on Peg 1. 
# Create a method that prints a string with the correct steps to solve the puzzle.


# Output Format

# Print the peg to move from, an arrow "->", and the peg to move to. For example, to move from peg 1 to peg 3, print:
# 1->3.
# Print a string with all the steps, each step on its own line.


# Examples

# hanoi_steps(2)
# # => 1->2 
# #    1->3 
# #    2->3

# hanoi_steps(3)
# # => 1->3 
# #    1->2
# #    3->2
# #    1->3
# #    2->1
# #    2->3
# #    1->3

# hanoi_steps(4)
# # => 1->2 
# #    1->3 
# #    2->3
# #    1->2
# #    3->1
# #    3->2
# #    1->2
# #    1->3
# #    2->3
# #    2->1
# #    3->1
# #    2->3
# #    1->2
# #    1->3
# #    2->3

def hanoi_steps(number_of_discs)
  # your code here
  step(number_of_discs, 1, 2, 3)
end

def step(number_of_discs, starting, intermediate, goal)
  if number_of_discs == 1
    puts move(starting, goal)
  else
    step(number_of_discs-1, starting, goal, intermediate)
    puts move(starting, goal)
    step(number_of_discs-1, intermediate, starting, goal)
  end
end

def move(starting, goal)
  "#{starting}->#{goal}"
end

hanoi_steps(2)
# => 1->2 
#    1->3 
#    2->3

hanoi_steps(3)
# => 1->3 
#    1->2
#    3->2
#    1->3
#    2->1
#    2->3
#    1->3

hanoi_steps(4)
# => 1->2
#    1->3
#    2->3
#    1->2
#    3->1
#    3->2
#    1->2
#    1->3
#    2->3
#    2->1
#    3->1
#    2->3
#    1->2
#    1->3
#    2->3


# anothor solution
def hanoi_steps(number_of_discs)
  move_discs(number_of_discs, 1, 2, 3)
end

def move_discs(n, a, b, c)
  if n.positive?
    move_discs(n - 1, a, c, b)
    puts "#{a}->#{c}"
    move_discs(n - 1, b, a, c)
  end
end

hanoi_steps(2)
# => 1->2 
#    1->3 
#    2->3

hanoi_steps(3)
# => 1->3 
#    1->2
#    3->2
#    1->3
#    2->1
#    2->3
#    1->3

hanoi_steps(4)
# => 1->2
#    1->3
#    2->3
#    1->2
#    3->1
#    3->2
#    1->2
#    1->3
#    2->3
#    2->1
#    3->1
#    2->3
#    1->2
#    1->3
#    2->3