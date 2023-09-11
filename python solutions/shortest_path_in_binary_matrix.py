from typing import Deque, List


class Solution:
    def shortestPathBinaryMatrix(self, grid: List[List[int]]) -> int:
        if grid[0][0] != 0 or grid[-1][-1] != 0:
            return -1
        
        max_row = len(grid) - 1
        max_col = len(grid[0]) - 1

        offsets = [(-1, -1), (-1, 0), (-1, 1), (0, -1), (0, 1), (1, -1), (1, 0), (1, 1)]

        def get_neighbours(x, y):
            for x_offset, y_offset in offsets:
                new_row = x + x_offset
                new_col = y + y_offset
                # print(new_row, " : ", new_col)
                if not(0 <= new_row <= max_row and 0 <= new_col <= max_col):
                    continue
                if grid[new_row][new_col] != 0:
                    continue
                yield (new_row, new_col)

        q = Deque()
        q.append((0, 0))
        grid[0][0] = 1

        while q:
            row, col = q.popleft()
            distance = grid[row][col]
            if (row, col) == (max_row, max_col):
                return distance
            for neighbour_row, neighbour_col in get_neighbours(row, col):
                grid[neighbour_row][neighbour_col] = distance + 1
                q.append((neighbour_row, neighbour_col))

        return -1