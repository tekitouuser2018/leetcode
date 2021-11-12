# @param {String} s
# @param {Character} c
# @return {Integer[]}
def shortest_to_char(s, c)
    distance_arr = []
    len = s.length
    s.each_char.with_index do |char, index| 
        distance_arr << index if char == c
    end

    
    pointer = 0
    answer = []
    s.each_char.with_index do |char, index|
        pointer += 1 if index == distance_arr[pointer]
        min = 100000
        min = (distance_arr[pointer-1] - index ).abs if pointer > 0
        tmp = distance_arr[pointer].to_i
        min = [min, ((tmp - index).abs)].min
        answer << min
    end
    
    return answer    
end
