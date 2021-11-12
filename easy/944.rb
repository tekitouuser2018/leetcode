# @param {String[]} strs
# @return {Integer}
def min_deletion_size(strs)
    len = strs[0].length
    count = 0
    for col_index in 0...len do
        strs.each_with_index do |str, index|
            
            if index > 0 && strs[index-1][col_index].to_s > str[col_index].to_s
                count += 1 
                break
            end
        end
    end
    count
end
