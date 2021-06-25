# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
    
    # +-+-+-で配列を作成。 + to + までの収支がプラスになるなら加算。左右から計算.fibonatiっぽくなる
    
    # -2 -1 -4 0 -1 1 3 -2 2
    # -1 1  0 3 1 2 0 -1 4
    # -3 0 -4 3 0 3 3 -3 6
    # 5, 9, 8, 15, 23
    # 23 18 14 15 8
    # [1,-2,5,-3,7] 1, -1, 4, 1, 8 : 8 7 9 4 7 : 9 6 13 5 15
    len = nums.length
    if len == 1
       return nums[0] 
    end
    sumArr = Array.new(len,0)
    sumArrRev = Array.new(len,0)
    sum = 0
    max = -1000000
    sumSum = Array.new(len,0)
    plus = false
    subArr = Array.new()
    subArr << 0
    subArr << 0
    for i in 0...len
       cur = nums[i]
        
        if i == len -1
            if (plus && cur <0) || (!plus && cur > 0)
                
                subArr << sum
                subArr << cur
            else 
                sum += cur
                subArr << sum
            end
            
       
        elsif plus && cur >= 0
            sum += cur
        elsif !plus && cur < 0
            sum += cur
        elsif plus && cur < 0
            subArr << sum
            sum = cur
            plus = false
        elsif !plus && cur >= 0
            subArr << sum
            sum = cur
            plus = true
        end
        
    end
    subArr << 0
    subArr << 0
    
    l = subArr.length
    ansArr = Array.new()
    
    for i in 2...l-1
       c = subArr[i]
        if c < 0
            next
        end
        
        mx = [c,c + subArr[i-1] + subArr[i-2]].max
        subArr[i] = mx
        ansArr << mx
    end
    
    max = ansArr.max
    

    
    max = [max, nums.max].max
    
   
    minus = true
    nums.each {|num| num > 0? minus = false: 0 }
    minus ? max = nums.max : 0

    return max
end
