# @param {String[][]} orders
# @return {String[][]}
def display_table(orders)
    orders.sort_by! {|order| [order[1].to_i, order[2]]}
    menu = []
    orders.each do |order|
       menu << order[2] 
    end
    menu.uniq!
    menu.sort!
    first_arr = ["Table"]
    first_arr.concat menu

    ans = []
    ans << first_arr
    arr = Array.new(menu.length + 1, "0")

    orders.each_with_index do |order, index|
        table = order[1]
        dish = order[2]
        if arr[0] == table then
            num = arr[first_arr.index(dish)].to_i
            arr[first_arr.index(dish)] = (num += 1).to_s
        elsif ((arr[0] != table) || (index >= (orders.size -1)))  then
            ans << arr unless arr[0] == "0"
            arr = Array.new(menu.length + 1, "0")
            arr[0] = table
            num = arr[first_arr.index(dish)].to_i
            arr[first_arr.index(dish)] = (num += 1).to_s
        end
            
        if ((index >= (orders.size-1)) && (arr[0] != ans[ans.size-1][0]))  then
            ans << arr 
        end
    end
    ans
end
