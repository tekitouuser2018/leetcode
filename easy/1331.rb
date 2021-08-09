# @param {Integer[]} arr
# @return {Integer[]}
def array_rank_transform(arr)


    arrayT =[]

    arr.each_with_index do |e, index|
       arrayT << {num: e, index: index, sorted: 0 } 
    end
    p arrayT
    
    arr2 = arr.sort
    arrayT.sort_by! {|a| a[:num]}
    
    p arr2
    p arrayT
    
    # arr3 = arr2.clone
    count = 1
    arr2.each_with_index do |num, index|
       if index > 0 && arr2[index] == arr2[index-1]
            # arr3[index] = arr3[index-1]
            arrayT[index][:sorted] = arrayT[index-1][:sorted]
            next
       else
           # arr3[index] = count
           arrayT[index][:sorted] = count
        end
        count += 1
    end
    
    # arr = arr.map{|e| arr3[arr2.index(e)]}.to_a

    return arrayT.sort_by{|a| a[:index]}.map{|a| a[:sorted]}.to_a
end

