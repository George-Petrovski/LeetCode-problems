import collections
class Solution:
    def minWindow(self, S: str, T: str) -> str:
        #candidates are indexes of the first letter in T
        candidates = collections.deque([index for index in range(len(S)) if S[index] == T[0]])
        if not candidates:
            return ""
        
        leftovers = [i for i in T[1:]]
        if not leftovers:
            return S[candidates[0]]
        
        min_left, min_right = 0, -1
        while candidates:
            index = candidates.popleft()
            q = collections.deque(leftovers)
            r_index = index + 1
            while q:
                next_index = S.find(q.popleft(), r_index)
                if next_index == -1:
                    break
                r_index = next_index + 1
            else:
                if min_right == -1 or min_right - min_left > r_index - index -1:
                    min_right, min_left = r_index - 1, index

        return S[min_left : min_right + 1]