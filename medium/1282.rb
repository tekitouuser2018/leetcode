# @param {Integer[]} group_sizes
# @return {Integer[][]}
def group_the_people(group_sizes)
    arr_with_idx = []
    group_sizes.each_with_index do |n, idx|
       arr_with_idx << [n,idx] 
    end
    arr_with_idx.sort_by! {|arr| arr[0]}
    tmp_arr = []
    ans = []
    arr_with_idx.each do |n|
        tmp_arr << n[1]
       if tmp_arr.length == n[0]
          ans << tmp_arr
          tmp_arr = []
       end
    end
    ans
end
