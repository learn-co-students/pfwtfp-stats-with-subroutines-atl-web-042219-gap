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
   
      # find the hash that has the highest value and return its key
      rtnd_value = 0
      hash.select do |num_hash_key, num_hash_val|
         #binding.pry
         if num_hash_val > rtnd_value
            rtnd_value = num_hash_val
         end  
      end
      hash.key(rtnd_value)
   
   end 
#--------------------------------------------------------------------------------------

def standard_deviation(num)
   #Calculating the input's mean
   mean_input = mean(num)
   #For each number in the set, subtract the mean from that number and square it. Hang onto that result of squared differences
      num_squared_dif = num.map do |digit|
            to_be_squared=(digit- mean_input).floor(2)
            is_squared = (to_be_squared**2).floor(2) 
            # binding.pry
            # 5
      end
   #Calculate the mean on the set of the squared differences
   set_mean = mean(num_squared_dif)

   #Take the square root of that new mean
   Integer.sqrt(set_mean).to_f  #  = > Almost there
  
end

