class Solution:
    def isAnagram(s: str, t: str) -> bool:
        a = list(s)
        b = list(t)
        a.sort()
        b.sort()
        return True if a == b else False
        
    
print(Solution.isAnagram("anagram", "nagaram"))
print(Solution.isAnagram("rat", "car"))