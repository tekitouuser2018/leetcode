# @param {String} order
# @param {String} s
# @return {String}
def custom_sort_string(order, s)
    order_arr = order.split('')
    s_arr = s.split('')
    ans = []
    order_arr.each_with_index do |n, index_order|
         count = s_arr.count(n)
         tmp = Array.new(count, n)
         ans.concat(tmp)
         s_arr.reject! {|item| item == n }
    end
    ans.concat(s_arr)
    ans.join('')
end
