class Solution:
    def removeDuplicates(nums):
        left_pointer = 1

        for right_pointer in range (1, len(nums)):
            if nums[right_pointer] != nums[right_pointer - 1]:
                nums[left_pointer] = nums[right_pointer]
                left_pointer += 1
        print(nums)
        print(left_pointer)
        return left_pointer
    
Solution.removeDuplicates([1,1,2])
Solution.removeDuplicates([0,0,1,1,1,2,2,3,3,4])