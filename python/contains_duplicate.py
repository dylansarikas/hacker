class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        hashy = set()
        for n in nums:
            if n in hashy:
                return True
            
            hashy.add(n)
        
        return False