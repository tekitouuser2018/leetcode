# @param {String[]} words
# @param {String} pattern
# @return {String[]}
def find_and_replace_pattern(words, pattern)
    pattern_arr = pattern.split('')
    match = false
    ans = []
    words.each do |word|
       match = true
       word_map = {}
       pattern_map = {}
       word_arr = word.split('')

       word_arr.each_with_index do |w, index|
           if !word_map[w]  && !pattern_map[pattern_arr[index]] then
               
               word_map[w] = pattern_arr[index]
               pattern_map[pattern_arr[index]] = w
               
              
           elsif (word_map[w] || pattern_map[pattern_arr[index]]) && (word_map[w] != pattern_arr[index] || w != pattern_map[pattern_arr[index]])

              match = false
              break
           end
       end
        
       if match then
           ans << word
       end
    end
    ans
end
