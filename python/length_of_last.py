class Solution:
    def lengthOfLastWord(s: str) -> int:
        # fixed = s.split()
        # return len(fixed[-1]) if fixed else 0
        return len(s.split()[-1]) if s.split() else 0
    
print(Solution.lengthOfLastWord("Hello World"))
print(Solution.lengthOfLastWord("   fly me   to   the moon  "))
print(Solution.lengthOfLastWord("luffy is still joyboy"))
print(Solution.lengthOfLastWord(""))
print(Solution.lengthOfLastWord("a"))