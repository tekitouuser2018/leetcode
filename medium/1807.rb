# @param {String} s
# @param {String[][]} knowledge
# @return {String}
def evaluate(s, knowledge)
    knowledge.each do |r|
        s.gsub!(/\(#{r[0]}\)/, r[1])      
    end
    s.gsub!(/\(+?.*?\)/, '?') 
    s
end
