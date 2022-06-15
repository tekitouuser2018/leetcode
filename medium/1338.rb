# @param {Integer[]} arr
# @return {Integer}
def min_set_size(arr)

    memo_arr = Array.new(10**5 + 1, 0)
    count = 0
    ans = 0
    arr.each do |n| 
        memo_arr[n] += 1
    end
    memo_arr.sort!.reverse!

    memo_arr.each do |n|
        count += n
        ans += 1
        break if (count >= (arr.size / 2))
    end

    ans
end
