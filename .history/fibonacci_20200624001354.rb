def fibonacci(n)
    if n &lt; 2
        n
    else
        fibonacci(n-1) + fibonacci(n-2)
    end
end
 
puts fibonacci(6)