class Solution:
    def climbStairs(n: int) -> int:
        steps = [1, 2]
        if n == 1:
            print("1")
            return 1
        elif n == 2:
            print("2")
            return 2
        else:
            index = 2
            while index < n:
                steps.append(steps[-1] + steps[-2])
                index += 1
        
        print(steps[-1])
        return steps[-1]
    
Solution.climbStairs(1)
Solution.climbStairs(2)
Solution.climbStairs(3)
Solution.climbStairs(4)
Solution.climbStairs(5)
Solution.climbStairs(6)