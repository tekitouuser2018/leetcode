# @param {String} s
# @return {Integer[]}
def partition_labels(s)
    ans = []
    arr = s.split("")
    len = arr.length
    memo_index = 0
    memo_last_index = 0
    arr.each_with_index do |r, idx|
        
        rest = arr.slice(idx+1...len)
        last_idx = arr.rindex(r)
        memo_last_index = [memo_last_index, last_idx].max if last_idx
        
        if (idx >= memo_last_index) then
            ans << idx+1 - memo_index
            memo_index = idx +1
            memo_last_index = idx
        end
    end
    ans
end
