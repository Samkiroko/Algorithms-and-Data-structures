# Time Scheduler
# You're working on a scheduler app. The user would like to attend as many events as possible but cannot attend events that overlap. Can you find the schedule with the greatest number of non-overlapping events?

# See if you can find an O(n log n) solution.

# I/O Format
# You will be given a list of n numbers. The numbers consist of n/2 pairs, where each pair is the start and end time of an event. Find the optimal schedule of events and return an array with each time like this: [start, end].

# Sample Input

# [4, 8, 1, 3, 7, 9, 5, 6]

# Sample Output

# [[1,3], [5,6], [7,9]]

# Explanation

# You are given 4 events:

# [[4,8], [1,3], [7,9], [5,6]]

# [4, 8] overlaps with 2 other events, so it should be left out, but the other 3 can all be included.

# Challenge
# Return an array with the schedule that fits the most events.

# Example
# p time_scheduler([4, 8, 1, 3, 7, 9, 5, 6])
# # => [[1,3], [5,6], [7,9]]

def time_scheduler(array)
  events = (0...array.length).step(2).collect { |index| [array[index], array[index+1]] }
  events.sort_by! { |event| event[1] }
  result = [events[0]]
  for i in 1...events.length
    result << events[i] unless overlap?(result[-1], events[i])
  end

  result
end

def overlap?(event1, event2)
  event1[1] > event2[0]
end


p time_scheduler([4, 8, 1, 3, 7, 9, 5, 6])
# => [[1,3], [5,6], [7,9]]