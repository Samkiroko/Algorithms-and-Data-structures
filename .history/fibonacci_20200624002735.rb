def iterative_factorial(n)
  (1..n).inject(:*)
end
puts iterative_factorial(6)

def recursive_factorial(n)
  # Base case
  return 1 if n <= 1

  # Recursive call
  n * recursive_factorial(n-1)
end

puts recursive_factorial(6)

# fibonacci 

# def fib(n)
#   return n if n < 2
#   fib(n-1) + fib(n-2)
# end

# memoization:Reusing work we have already done
@cache = [0,1]
def fib(n)
  return @cache[n] if @cache[n]
  @cache[n] = fib(n-1) + fib(n-2)
end

puts fib(1000)