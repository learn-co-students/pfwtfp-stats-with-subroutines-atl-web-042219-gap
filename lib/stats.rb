# Define your methods here
require 'pry'

#can refactor but ¯\_(ツ)_/¯
#method to cal the tolal of an array

def sum(num)
    total = 0
    num.each do|digit|
        total +=digit
    end
    total
end

def mean(num)
    #do the final calculation and return mean
    sum(num).to_f/num.length
end

#----------------------------------------------------------
def median(num)
    num = num.sort
     #if nums is even find the middle nums/ add them/divide them by 2 and return the ans
     if num.length.even?
        middle_num = num.length/2
       middle_num1 =  num[middle_num]
       middle_num2 = num[middle_num - 1]
       (middle_num1+middle_num2).to_f/2
     #else return the middle #
     else
        middle_num = num.length/2
        num[middle_num]
     end
end

#--------------------------------------------------------------------------------------
def mode(num)
#iterate throught the array and create a variable that has the element and the # 
# of times it occurs, return the one where the count is highest
   hash = Hash.new(0)
   num.each do |key|
        hash[key] +=1
   end
   binding.pry
   hash
end 
 

#--------------------------------------------------------------------------------------
