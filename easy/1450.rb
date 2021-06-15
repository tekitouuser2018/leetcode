# @param {Integer[]} start_time
# @param {Integer[]} end_time
# @param {Integer} query_time
# @return {Integer}
def busy_student(start_time, end_time, query_time)
    len = start_time.length()
    count = 0
    for i in 0..len
        s = start_time[i]
        e = end_time[i]
      
        if s.to_i <= query_time && query_time <= e.to_i
           count += 1 
        end
        
    end
    return count
end
