# @param {String} word
# @return {Integer}
def count_vowel_substrings(word)
    count = 0
    array = word.split('')
    vowels = ['a', 'e', 'i', 'o', 'u']
    array.each_with_index do |w, index|
        
      if vowels.index(w)
         check = [false, false, false, false, false]
         check[vowels.index(w)] = true
         index_copy = index + 1
         while (index_copy < array.length && vowels.index(array[index_copy])) do
            check[vowels.index(array[index_copy])] = true
            count+=1 if check.count(true) == 5
            index_copy+=1
         end
      end
      
    end
    count
end
