from collections import defaultdict

class Solution:
    def firstUniqChar(s):
        count = defaultdict(int)

        for c in s:
            count[c] += 1

        for i, c in enumerate(s):
            if count[c] == 1:
                return i
        
        return -1
    
print(Solution.firstUniqChar("leetcode"))
print(Solution.firstUniqChar("loveleetcode"))
print(Solution.firstUniqChar("aabb"))