class Solution:
    def search(nums: list[int], target: int) -> int:
        left = 0
        right = len(nums) - 1

        while left <= right:
            mid = (left + right) // 2
            if target > nums[mid]:
                left = mid + 1
            elif target < nums[mid]:
                right = mid - 1
            else:
                return mid
        return -1

print(Solution.search([-1,0,3,5,9,12], 9))
print(Solution.search([-1,0,3,5,9,12], 2))