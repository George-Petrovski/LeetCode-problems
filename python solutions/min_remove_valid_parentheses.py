class Solution:
    def minRemoveToMakeValid(self, s: str) -> str:
        idx_to_remove = set()
        stack = []
        for i, c in enumerate(s):
            if c not in "()":
                continue
            if c == "(":
                stack.append(i)
            elif not stack:
                idx_to_remove.add(i)
            else:
                stack.pop()
        idx_to_remove = idx_to_remove.union(set(stack))
        string_builder = []
        for i, c in enumerate(s):
            if i not in idx_to_remove:
                string_builder.append(c)
        return "".join(string_builder)