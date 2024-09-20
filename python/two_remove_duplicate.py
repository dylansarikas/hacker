class Solution:
    def removeDuplicates(nums: list[int]) -> int:
        if len(nums) <= 2: return len(nums)
        left_pointer = 2

        for right_pointer in range (2, len(nums)):
            if nums[right_pointer] != nums[left_pointer - 2]:
                nums[left_pointer] = nums[right_pointer]
                left_pointer += 1
            
        print(nums)
        return left_pointer
    
Solution.removeDuplicates([1,1,1,2,2,3])
Solution.removeDuplicates([0,0,1,1,1,1,2,3,3])