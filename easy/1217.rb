# @param {Integer[]} position
# @return {Integer}
def min_cost_to_move_chips(position)

    countEven = position.each.select {|index| index % 2 == 0 }.count
    countOdd = position.each.select {|index| index % 2 == 1 }.count
    if countEven > countOdd
        return countOdd
    else 
        return countEven
    end
end
