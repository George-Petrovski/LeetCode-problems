from collections import deque
from typing import List

class Solution:
    def shortestDistance(self, maze: List[List[int]], start: List[int], destination: List[int]) -> int:
        dirs = [(0, 1), (1, 0), (0, -1), (-1, 0)]
        s_row, s_col = start
        d_row, d_col = destination
        n = len(maze)
        m = len(maze[0])
        visited = set()
        queue = deque()
        for dir in dirs:
            queue.append((0, s_row, s_col, dir))
            visited.add((0, s_row, s_col, dir))
        def opposite(dir):
            return -dir[0], -dir[1]
        while queue:
            q_copy = queue.copy()
            queue.clear()
            while q_copy:
                moves, row, col, dir = q_copy.popleft()
                new_row, new_col = row + dir[0], col + dir[1]
                if new_row in [-1, n] or new_col in [-1, m] or maze[new_row][new_col]: # hit wall
                    if row == d_row and col == d_col:
                        return moves
                    visited.add((row, col, dir))
                    visited.add((row, col, opposite(dir)))
                    for new_dir in dirs:
                        if (row, col, new_dir) not in visited:
                            q_copy.append((moves, row, col, new_dir))
                            visited.add((row, col, new_dir))
                else: # still moving
                   queue.append((moves + 1, new_row, new_col, dir))
        return -1