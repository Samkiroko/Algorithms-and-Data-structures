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

