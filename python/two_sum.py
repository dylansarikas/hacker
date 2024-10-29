class Solution:
    def twoSum(self, nums: list[int], target: int) -> list[int]:
        numIndices = {}

        for i, n in enumerate(nums):
            difference = target - n
            if difference in numIndices:
                return [numIndices[difference], i]
            
            numIndices[n] = i

        return