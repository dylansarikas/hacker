class Solution:
    def sortColors(nums: list[int]) -> None:
        colors = [0,0,0]
        for num in nums:
            colors[num] += 1

        i = 0
        colors_index = 0
        while colors_index < len(colors):
            index = 0
            while index < colors[colors_index]:
                nums[i] = colors_index
                index += 1
                i += 1

            colors_index += 1
        
        print(nums)

Solution.sortColors([2,0,2,1,1,0])
Solution.sortColors([2,0,1])
Solution.sortColors([2,0,1,2,2,2,0])