# @param {Integer[][]} box_types
# @param {Integer} truck_size
# @return {Integer}
def maximum_units(box_types, truck_size)
    box_types.sort_by! { |a| a[1]*-1}
    amount = 0
    for i in 0...box_types.length
       boxes = box_types[i]
        num = boxes[0]
        size = boxes[1]
        if truck_size >= num
            amount += num * size
            truck_size -= num
        else
            amount += truck_size * size
            truck_size = 0
            break
        end
        
    end
    
    return amount
end
