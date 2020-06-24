# frozen_string_literal: true

def iterative_factorial(n)
  (1..n).inject(:*)
end
puts iterative_factorial(6)

def recursive_factorial(n)
  # Base case
  return 1 if n <= 1

  # Recursive call
  n * recursive_factorial(n - 1)
end

puts recursive_factorial(6)

# fibonacci

# def fib(n)
#   return n if n < 2
#   fib(n-1) + fib(n-2)
# end

# memoization:Reusing work we have already done
@cache = [0, 1]
def fib(n)
  return @cache[n] if @cache[n]

  @cache[n] = fib(n - 1) + fib(n - 2)
end

puts fib(1000)

# The limits of recursion
# as a reader kindly point out, the recursive solution can fail with "systemStackError:
# stack level too deep"
#  if you need to calculate big number you would have  to use an iterative solution

memo = []

(0..n).each do |i|
  memo[i] = i < 2 ? i : memo[i - 1] + memo[i - 2]
end
