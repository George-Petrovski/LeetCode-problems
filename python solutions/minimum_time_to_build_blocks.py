import heapq
from typing import List

class Solution:
    def minBuildTime(self, blocks: List[int], split: int) -> int:
        heapq.heapify(blocks)
        while len(blocks) > 1:
            x, y = heapq.heappop(blocks), heapq.heappop(blocks)
            heapq.heappush(blocks, max(x, y) + split)

        return blocks[0]