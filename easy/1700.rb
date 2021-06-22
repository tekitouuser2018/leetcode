# @param {Integer[]} students
# @param {Integer[]} sandwiches
# @return {Integer}
def count_students(students, sandwiches)
    remain = sandwiches.length
    
    stuck0 = 0
    stuck1 = 0
    i = 0
    j = 0
         
        while j < sandwiches.length
            
            stu = students[i]
            
            cur = sandwiches[j]
            
            if cur == stu
               remain -= 1
                i += 1
                j += 1
               next 
            elsif cur == 0 && stuck0 > 0
               remain -= 1

                stuck0 -= 1
                j += 1
               next 
                
            elsif cur == 1 && stuck1 > 0
               remain -= 1

                stuck1 -= 1
                j += 1
               next 
                
            elsif i >= students.length-1 && stuck0 == 0 && stuck1 == 0
              
                break
            
            elsif i >= students.length-1 && stuck0 == 0 && cur == 0
                
                break
            
            elsif i >= students.length-1 && stuck1 == 0 && cur == 1
               
                break
            
            end 
            
            
            
            while i < students.length
                stu = students[i]
                if cur == stu
                    remain -= 1
                    j += 1
                    
                    break
                end
                if stu == 0
                   stuck0 += 1 
                elsif stu == 1 
                    stuck1 += 1
                end
                i += 1
                
            end
            
           
            i += 1
            
        end
    
    return remain    
end
