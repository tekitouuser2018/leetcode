# @param {Integer[]} arr1
# @param {Integer[]} arr2
# @return {Integer[]}
def relative_sort_array(arr1, arr2)
    return arr1.sort_by {|a|  [(arr2.index(a) == nil ?  a +100000 : arr2.index(a)) ] }
end
