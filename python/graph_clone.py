from typing import Optional
class Solution:
    def cloneGraph(self, node: Optional['Node']) -> Optional['Node']:
        clone = {}

        def depthFirstSeach(node):
            if node in clone:
                return clone[node]
            
            copy = Node(node.val)
            clone[node] = copy

            for neighbor in node.neighbors:
                copy.neighbors.append(depthFirstSeach(neighbor))

            return copy
        
        return depthFirstSeach(node) if node else None