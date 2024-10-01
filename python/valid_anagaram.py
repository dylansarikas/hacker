class Solution:
    def isAnagram(s: str, t: str) -> bool:
        # s_counter = Counter(s)
        # t_counter = Counter(t)

        # return s_counter == t_counter
        
        a = list(s)
        b = list(t)
        a.sort()
        b.sort()
        return True if a == b else False
        
    
print(Solution.isAnagram("anagram", "nagaram"))
print(Solution.isAnagram("rat", "car"))