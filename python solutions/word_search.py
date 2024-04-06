from typing import List


class Solution:
    def exist(self, board: List[List[str]], word: str) -> bool:
        hash_map = []

        def dfs(i, j, char_idx):
            if board[i][j] != word[char_idx]:
                return False
            elif board[i][j] == word[char_idx]:
                if (i,j) in hash_map:
                    return False
                hash_map.append((i,j))
                
                # return True
                res = False
                if board[i][j] == word[char_idx] and len(word)-1 == char_idx:
                    return True
                if i > 0 and board[i-1][j] == word[char_idx+1]:
                    if dfs(i-1, j, char_idx+1):
                        res = True
                if j < len(board[0])-1 and board[i][j+1] == word[char_idx+1]:
                    if dfs(i, j+1, char_idx+1):
                        res = True
                if i < len(board)-1 and board[i+1][j] == word[char_idx+1]:
                    if dfs(i+1, j, char_idx+1):
                        res = True
                if j > 0 and board[i][j-1] == word[char_idx+1]:
                    if dfs(i, j-1, char_idx+1):
                        res = True

                if res == False:
                    hash_map.pop()
                return res
            



        # iterate over m x n
        # start looking for the first characters in word
        for i in range(len(board)):
            for j in range(len(board[0])):
                hash_map = []
                # if board[i][j] == word[0]:
                if dfs(i, j, 0):
                    return True

        return False