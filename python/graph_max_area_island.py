class Solution:
    def maxAreaOfIsland(self, grid: list[list[int]]) -> int:
        rows, cols = len(grid), len(grid[0])
        visit = set()

        def DepthForSearch(r, c):
            if (r < 0 or r == rows or c < 0 or c == cols or grid[r][c] == 0 or (r, c) in visit):
                return 0
            
            visit.add((r, c))
            return(1 + DepthForSearch(r + 1, c) +
                       DepthForSearch(r - 1, c) +
                       DepthForSearch(r, c + 1) +
                       DepthForSearch(r, c - 1))

        area = 0

        for r  in range(rows):
            for c in range(cols):
                area = max(area, DepthForSearch(r, c))

        return area
