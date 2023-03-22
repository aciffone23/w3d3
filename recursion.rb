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
# p range(1,5)

# p sum_array([1,2,3,4,5])

# p exponentation(2,4)

# p exp(2,4)