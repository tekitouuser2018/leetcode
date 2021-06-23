# @param {Integer[]} release_times
# @param {String} keys_pressed
# @return {Character}
def slowest_key(release_times, keys_pressed)
    n = keys_pressed.length

    max = 0
 
    alph = keys_pressed[0]
    for i in 0...n
        cur = keys_pressed[i]
        if i == 0
           max = release_times[i] 
        elsif max < release_times[i] - release_times[i-1]
            max = release_times[i] - release_times[i-1]
            
            
            alph = cur 
        elsif max == release_times[i] - release_times[i-1] && alph < cur
            
            alph = cur 
            
        end
    end
    return alph
end
