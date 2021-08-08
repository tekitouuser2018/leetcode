# @param {Integer[]} arr
# @return {Integer[]}
def sort_by_bits(arr)
    arr.sort!
    return arr.sort_by {|a| [a.to_s(2).count("1")]}
end
