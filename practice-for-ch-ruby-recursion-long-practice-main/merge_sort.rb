def merge_sort(arr)
    return arr if arr.length <= 1
    mid_index = arr.length / 2 
    
    left = merge_sort(arr[0...mid_index])
    right = merge_sort(arr[mid_index..-1])

    merge(left, right)

end 

def merge(left, right)
    results = []

    while !left.empty? && !right.empty? 
        if left[0] > right[0]
            results << left
        else 
            results << right
        end 
    end 
    return results

end 

# def merge()

# end 

p merge_sort([1,2,3])