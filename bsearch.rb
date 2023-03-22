def bsearch(array, target)
    return nil if array.empty? 
    middle_idx = array.length / 2 
    return middle_idx if target == array[middle_idx]
    left = array[0...middle_idx] 
    right = array[middle_idx+1..-1]
    counter = array.length/2
    if target < array[middle_idx]
        bsearch(left, target)
    else 
        bsearch(right, target)
        if right[right.length/2] == target
            counter += 2 #(sub_array(idx) for each subarray ) + mid_idx + 1 
           
        elsif !right.include?(target)
            return nil
        else 
            counter += 1
        end
        counter 
    end 
end 

#target is an idx, compare that index to middle index 
#
#1 < ARRAY[1] = 2 1 < 2 1/2
#left << bsearch(array[0..1], 1)
#left << bsearch[1,2 ] , 1)

p bsearch([1, 2, 3], 1) # => 0
p bsearch([2, 3, 4, 5], 3) # => 1
p bsearch([2, 4, 6, 8, 10], 6) # => 2
p bsearch([1, 3, 4, 5, 9], 5) # => 3
p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
p bsearch([1, 2, 3, 4, 5, 6], 7) # => nil