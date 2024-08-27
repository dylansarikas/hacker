def majority_element(nums)
    majority = Hash.new(0)
    for num in nums do
        majority[num] += 1
    end
    p majority
    return majority.key(majority.values.max)

end

def majority_element(nums)
    numbers = nums.sort
    p numbers[numbers.length / 2]
    return numbers[numbers.length / 2]

end

nums([2,2,1,1,1,2,2])
nums([3,2,3])