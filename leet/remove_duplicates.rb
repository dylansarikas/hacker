def remove_duplicates(nums)
    left_pointer = 1
    right_pointer = 1
    while right_pointer < nums.length
        if nums[right_pointer] == nums[right_pointer - 1]
            right_pointer += 1
        else
            nums[left_pointer] = nums[right_pointer]
            left_pointer += 1
            right_pointer += 1
        end
    end
    fixer = left_pointer
    while fixer < nums.length
        nums[fixer] = "x"
        fixer += 1
    end
    p left_pointer, nums
    return left_pointer
end

remove_duplicates([1,1,2])
remove_duplicates([0,0,1,1,1,2,2,3,3,4])