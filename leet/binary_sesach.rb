def search(nums, target)
    left = 0
    right = nums.length - 1

    while left <= right
        mid = (left + right) / 2
        if target > nums[mid]
            left = mid + 1
        elsif target < nums[mid]
            right = mid -1
        else
            return mid
        end
    end
    return -1
    
end

puts search([-1,0,3,5,9,12], 9)
puts search([-1,0,3,5,9,12], 2)