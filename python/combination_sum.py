class Solution:
    def combinationSum(self, candidates: List[int], target: int) -> List[List[int]]:
        result = []

        def depthFirstSearch(i, current, total):
            if total == target:
                result.append(current.copy())
                return
            
            if i >= len(candidates) or total > target:
                return
            
            current.append(candidates[i])
            depthFirstSearch(i, current, total + candidates[i])
            current.pop()
            depthFirstSearch(i + 1, current, total)

        depthFirstSearch(0, [], 0)
        return result