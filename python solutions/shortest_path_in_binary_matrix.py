from typing import Deque, List


class Solution:
    def shortestPathBinaryMatrix(self, grid: List[List[int]]) -> int:
        if grid[0][0] != 0 or grid[-1][-1] != 0:
            return -1
        
        N = len(grid)

        offsets = [(-1, -1), (-1, 0), (-1, 1), (0, -1), (0, 1), (1, -1), (1, 0), (1, 1)]

        q = Deque()
        q.append((0, 0))
        visited = {(0, 0)}

        def get_neighbours(x, y):
            for x_offset, y_offset in offsets:
                new_row = x + x_offset
                new_col = y + y_offset
                # print(new_row, " : ", new_col)
                if 0 <= new_row < N and 0 <= new_col < N and not grid[new_row][new_col] and (new_row, new_col) not in visited:
                    yield (new_row, new_col)

        current_distance = 1

        while q:
            length = len(q)
            print(q)
            for _ in range(length):
                row, col = q.popleft()

                if row == N-1 and col == N-1:
                    return current_distance
                
                for p in get_neighbours(row, col):
                    print(p)
                    visited.add(p)
                    q.append(p)
                
            current_distance += 1

        return -1