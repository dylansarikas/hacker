class Solution(object):
    def isValid(s):
        pancake_stack = []
        closing_match = { ")" : "(", "}" : "{", "]" : "[" }

        for k in s:
            if k in closing_match:
                if pancake_stack and pancake_stack[-1] == closing_match[k]:
                    pancake_stack.pop()
                else:
                    return False
            else:
                pancake_stack.append(k)

        return True if not pancake_stack else False


Solution.isValid("(())")
Solution.isValid("([")
Solution.isValid("(")
Solution.isValid("((")
Solution.isValid("()")
Solution.isValid("()[]{}")
Solution.isValid("[()]{}")
Solution.isValid("([]{})")
Solution.isValid("([)]")
Solution.isValid("{[]}")
Solution.isValid("([]){")