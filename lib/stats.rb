# Define your methods here
require 'pry'
def mean(arr)
  arr.sum.to_f/arr.length
end


def median(arr)

if arr.length % 2 == 0

a = arr.sort
m1 = a[a.count/2]
m2 = a[a.count/2 - 1]

middle_num = ((m1 + m2).to_f / 2)
middle_num

else

b = arr.sort
middle_n = b[(b.count/2).ceil]
middle_n
end
end

def mode(arr)
freq = arr.inject(Hash.new(0)) { |h,v| h[v] += 1; h}
arr.max_by { |v| freq[v] }
end

def standard_deviation(arr)

  sqdiff = arr.collect do |number|
    t = number - mean(arr)
    t ** 2
  end

  new_mean = mean(sqdiff)

  Math.sqrt(new_mean)
end
