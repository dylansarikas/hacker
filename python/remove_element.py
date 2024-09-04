class Solution:
    def removeElement(nums, val):
        pointer = 0

        for k in range (len(nums)):
            if nums[k] != val:
                nums[pointer] = nums[k]
                pointer += 1
        print(nums)
        print(pointer)
        return pointer


Solution.removeElement([3,2,2,3], 3)
Solution.removeElement([0,1,2,2,3,0,4,2], 2)