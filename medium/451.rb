# @param {String} s
# @return {String}
def frequency_sort(s)
    count_arr = Array.new(100, 0)
    arr = s.split('')
    arr.each do |r|
       count_arr[r.ord - 'A'.ord] += 1 
    end
    arr.sort_by! {|r| [-count_arr[r.ord - 'A'.ord], -r]}.join('')
end
