# @param {Integer} n
# @return {Integer}
def fib(n)
    n == 0 ? (return 0) : n <= 2 ? (return 1) : (return fib(n-1) + fib(n-2))
end

