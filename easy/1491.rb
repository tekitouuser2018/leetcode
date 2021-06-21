# @param {Integer[]} salary
# @return {Float}
def average(salary)
    minn = salary.min
    maxx = salary.max
    return salary.select {|a| a != minn && a != maxx }.sum.fdiv(salary.length - 2)
end
