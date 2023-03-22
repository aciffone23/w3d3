def range(start,last)
    return [] if last <= start
    [start] + range(start + 1, last)
end

def sum_array(arr)
    return 0 if arr.empty?
    arr[0] + sum_array(arr[1..-1])
end

def exponentation(num,power)
    return 1 if power == 0
    return num if power == 1

    num * exponentation(num, power - 1)
end

def exp(num,power)
    return 1 if power == 0 
    return num if power == 1 

    if num.even?
        exp(num, power / 2) * exp(num,power / 2) 
    else 
        (num * (exp(num, (power - 1) / 2))) * (num * (exp(num, (power - 1) / 2)))
    end
end

def deep_dup(arr)
    results = []
    arr.each do |ele|
        if ele.is_a?(Array)
        results << deep_dup(ele)
        else 
            results << ele
        end
    end
    results
end
# p range(1,5)

# p sum_array([1,2,3,4,5])

# p exponentation(2,4)

# p exp(2,4)

# robot_parts = [
#     ["nuts", "bolts", "washers"],
#     ["capacitors", "resistors", "inductors"]
#   ]
  
# robot_parts_copy = deep_dup(robot_parts)
  
#   # shouldn't modify robot_parts
# robot_parts_copy[1] << "LEDs"
#   # but it does
# p robot_parts[1] # => ["capacitors", "resistors", "inductors", "LEDs"]
# p robot_parts_copy[1]

def fib(n)
    return [0]  if n == 0 
    return [0,1] if n == 1

    fast_fib = fib(n-1)

    fast_fib << fast_fib[-1] + fast_fib[-2]

end 

p fib(5)

def bsearch(array, target)
    return nil if array.empty? 
    start_idx = array.length / 2 
    return start_idx if target == array[start_idx]

    if target < array[start_idx]
        bsearch(array[0..start_idx], target)
    else 
        bsearch(array[start_idx..-1],target)
    end 
        
end 


p bsearch([2,3,4,5], 3)