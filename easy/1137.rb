# @param {Integer} n
# @return {Integer}
def tribonacci(n)
    triArr = Array.new(n,0)
    triArr[0] = 0
    triArr[1] = 1
    triArr[2] = 1

    for i in 3..n
       triArr[i] = triArr[i-3] + triArr[i-2] + triArr[i-1] 
    end

    return triArr[n]
end
