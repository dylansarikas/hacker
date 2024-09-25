class Solution:
    def strStr(haystack: str, needle: str) -> int:
        return haystack.find(needle)

print(Solution.strStr("sadbutsad", "sad"))
print(Solution.strStr("leetcode", "leeto"))
print(Solution.strStr("hello", "ll"))