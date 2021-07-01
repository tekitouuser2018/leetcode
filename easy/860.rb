# @param {Integer[]} bills
# @return {Boolean}
def lemonade_change(bills)
    five = 0
    ten = 0
    twelve = 0
    
    for i in 0...bills.length
       c = bills[i]
        change = c - 5
        twe = change / 20
        t = (change%20)/10
        f = ((change%20)%10)/5
        
        
        if (twelve >= twe) && (ten >= t) && (five >= f)
            
           twelve -= twe
            ten -= t
            five -= f
        elsif (ten >= twe*2 + t) && (five >= f)
            
           ten -= twe*2 + t
            five -= f
        elsif five >= (twe*4 + t*2 + f)
            
           five -= twe*4 + t*2 + f
        else
            return false
        end
        
        
        twelve += c / 20
        ten += (c%20)/10
        five += ((c%20)%10)/5
       
    end
    
    return true
end
