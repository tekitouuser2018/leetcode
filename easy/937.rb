# @param {String[]} logs
# @return {String[]}
def reorder_log_files(logs)
    letters = []
    digits = []
    digiMatch = /^[0-9]+$/
    reg = Regexp.new(digiMatch)

    logs.each do |log|
        check = log.split(" ")[1]
        if reg.match(check)
           digits << log
        else
            letters << log
        end
    end
    # lettersは要素毎に比較ソートしなければならない -> 配列比較
    letters.sort_by! {|letter| [letter.split(" ")[1..letter.length].to_a, letter.split(" ")[0]]}

    return letters.concat(digits)
end
